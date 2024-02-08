let toInputString = (date: option<Js.Date.t>) => {
  switch date {
  | None => ""
  | Some(date) => {
      let year =
        date->Js.Date.getFullYear->Float.toInt->Int.toString->StringExtra.padStartWith(4, "0")
      let month =
        (date->Js.Date.getMonth->Float.toInt + 1)->Int.toString->StringExtra.padStartWith(2, "0")
      let day = date->Js.Date.getDate->Float.toInt->Int.toString->StringExtra.padStartWith(2, "0")
      `${year}-${month}-${day}`
    }
  }
}

let toString = (date: Js.Date.t) => {
  let year = date->Js.Date.getFullYear->Float.toInt->Int.toString->StringExtra.padStartWith(4, "0")
  let month =
    (date->Js.Date.getMonth->Float.toInt + 1)->Int.toString->StringExtra.padStartWith(2, "0")
  let day = date->Js.Date.getDate->Float.toInt->Int.toString->StringExtra.padStartWith(2, "0")
  `${year}-${month}-${day}`
}