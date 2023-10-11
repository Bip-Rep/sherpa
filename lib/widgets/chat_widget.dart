import 'dart:io';
import 'dart:async';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:maid/lib.dart';
import 'package:maid/model.dart';
import 'package:maid/widgets/settings_widget.dart';
import 'package:system_info_plus/system_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key, required this.model});

  final Model model;

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  Model get model => widget.model;

  final ScrollController _consoleScrollController = ScrollController();
  List<Widget> chatWidgets = [];
  ResponseMessage newResponse = ResponseMessage();
  
  String log = "";
  int historyLength = 0;
  int responseLength = 0;
  Lib? lib;

  bool canStop = false;

  void _exec() {
    //close the keyboard if on mobile
    if (Platform.isAndroid || Platform.isIOS) {
      FocusScope.of(context).unfocus();
    }
    setState(() {
      model.compilePrePrompt();
      historyLength = "${model.prePrompt}${model.promptController.text.trim()}\n".length;
      responseLength = 0;
      model.inProgress = true;
    });
    if (lib == null) {
      lib = Lib();
      lib?.executeBinary(
        model: model,
        paramsLlama: ParamsLlama(
          memory_f16: model.memory_f16,
          random_prompt: model.random_prompt,
          use_color: model.use_color,
          interactive: model.interactive,
          interactive_start: model.interactive_start,
          instruct: model.instruct,
          ignore_eos: model.ignore_eos,
          perplexity: model.perplexity,
          seed: model.seedController.text,
          n_threads: model.n_threadsController.text,
          n_predict: model.n_predictController.text,
          repeat_last_n: model.repeat_last_nController.text,
          n_parts: model.n_partsController.text,
          n_ctx: model.n_ctxController.text,
          top_k: model.top_kController.text,
          top_p: model.top_pController.text,
          temp: model.tempController.text,
          repeat_penalty: model.repeat_penaltyController.text,
          n_batch: model.n_batchController.text,
        ),
        printLnLog: printLnLog,
        printLog: printResult,
        promptPassed: model.prePrompt,
        firstInteraction: model.promptController.text.trim() +
            (model.promptController.text.isEmpty ? "" : "\n"),
        done: done,
        canStop: canUseStop,
        stopToken: model.reversePromptController.text,
      );
    } else {
      lib?.newPromp(
          " ${model.promptController.text.trim()}${model.promptController.text.isEmpty ? "" : "\n"}");
    }
    setState(() {
      chatWidgets.add(UserMessage(message: model.promptController.text.trim()));
      newResponse = ResponseMessage();
      chatWidgets.add(newResponse);
      model.promptController.text = ""; // Clear the input field
    });
  }

  void scrollDown() {
    _consoleScrollController.animateTo(
      _consoleScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 50),
      curve: Curves.easeOut,
    );
  }

  void printLnLog(String message) {
    setState(() {
      log += "$message\n";
    });
    scrollDown();
  }

  void printResult(String message) {
    // for characters in message
    for (int i = 0; i < message.length; i++) {
      responseLength++;
      if (responseLength > historyLength) {
        newResponse.addMessage(message.substring(i));
        scrollDown();
        return;
      }
    }
  }

  void done() {
    setState(() {
      model.inProgress = false;
    });
  }

  void canUseStop() {
    setState(() {
      canStop = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
            ),
          ),
          Column(
            children: [
              Expanded(
                child: ListView.builder(
                  controller: _consoleScrollController,
                  itemCount: chatWidgets.length,
                  itemBuilder: (BuildContext context, int index) {
                    return chatWidgets[index];
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        onSubmitted: (value) => _exec(),
                        controller: model.promptController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Prompt',
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: model.inProgress ? null : _exec,
                      child: const Text('Send'),
                    ),
                    ElevatedButton(
                      onPressed: model.inProgress ? lib?.cancel : null,
                      child: const Text('Stop'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
    }
}

class UserMessage extends StatelessWidget {
  final String message;

  UserMessage({required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blue[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(message),
      ),
    );
  }
}

class ResponseMessage extends StatefulWidget {
  final StreamController<String> messageController = StreamController<String>.broadcast();

  void addMessage(String message) {
    messageController.add(message);
  }

  @override
  _ResponseMessageState createState() => _ResponseMessageState();
}

class _ResponseMessageState extends State<ResponseMessage> {
  String _message = "";

  @override
  void initState() {
    super.initState();
    widget.messageController.stream.listen((textChunk) {
      setState(() {
        _message += textChunk;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.green[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(_message),
      ),
    );
  }

  @override
  void dispose() {
    widget.messageController.close();
    super.dispose();
  }
}