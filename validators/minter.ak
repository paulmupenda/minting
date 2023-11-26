use aiken/transaction.{ScriptContext} as tx

validator {
  fn gift_card(rdmr: Int, ctx: ScriptContext) -> Bool {
    let ScriptContext { purpose, .. } =
      ctx

    expect tx.Mint(_policy) =
      purpose

    rdmr == 1618033988
  }
}