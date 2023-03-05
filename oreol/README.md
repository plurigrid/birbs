# oreol
This birb will work wich ChatGPT API.

We will sync up on hourly increments until 00:00 UTC.

# Meta
- why: 
    - lower unit cost of producing native mobile / desktop UIs for any LLM, starting with ChatGPT API (bonus: make it work with self-hosted LLAMA or Flux T5)
    - allow for more abstract uses of LLMs as they relate to interface surfaces
- what:
    - Empowering chat agents to query fact triples instead of just hallucinating
    - use a formal language (like Material Design Widgets) for more than just a text box and a button to send
- how:
    - convert LangChain templates for prompts, KG extraction, and others into Dart-friendly format (e.g. `langchaindart`)
    - FlutterFlow Template / Design System, leveraging Flutter/Dart to enable human-LLM interactions using ChatGPT API and a simple interface
    - a demo showcasing ChatGPT interactions on iPhone, iPad, or Android
# Log
- 20:00 UTC: 
    - next steps:
        - define the use cases and user scenarios
        - design the interface
        - implement the ChatGPT API client
        - create templates and components
        - test and iterate
    - accomplish by next sync:
        - simple app that has a TextBox and Button to Submit anywhere, to Dart variable to start

# Scenarios
Use text transformers to produce fact triples from natural language statements, for purposes of shopping lists, music playlists, and hyperhousehold-accounting