import "package:flutter/material.dart";

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Icon(Icons.brush_outlined),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text("Appearance"),
                            )
                          ],
                        ),
                      )
                    ),
                    Expanded(
                      flex: 4,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.chevron_right)
                      )
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Icon(Icons.terminal_outlined),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text("Functions"),
                            )
                          ],
                        ),
                      )
                    ),
                    Expanded(
                      flex: 4,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.chevron_right)
                      )
                    )
                  ],
                ),
              ),
            ),

          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Icon(Icons.data_object),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text("Data"),
                            )
                          ],
                        ),
                      )
                    ),
                    Expanded(
                      flex: 4,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.chevron_right)
                      )
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Icon(Icons.language_outlined),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text("Language"),
                            )
                          ],
                        ),
                      )
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Text(
                              'English',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Icon(Icons.chevron_right),
                        ],
                      )
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Icon(Icons.app_settings_alt_outlined),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text("Application version"),
                            )
                          ],
                        ),
                      )
                    ),
                    Expanded(
                      flex: 4,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text('1.2.4'),
                        )
                      )
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}