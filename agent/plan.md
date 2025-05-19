# Agent Flow:
- Reasoning agent reads the question formulates a plan.
- Each step of the plan is RAG-ged to get the most relevant tactics.
- The agent then writes the code for the plan.
- The code is executed.
- If failure is experienced, then, the question is re-fed to the LLM.