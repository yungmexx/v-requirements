window.addEventListener("message", (Event) => {
    switch (Event.data.Action) {
        case "SetRequirements":
            if (Event.data.Display) {
                SetupRequirements(Event.data.Requirements, Event.data.title);
            } else {
                $(".Main-Container").fadeOut(500);
            }
            break;
        default:
            return;
    }
});

function SetupRequirements(Requirements, title) {
    $(".Main-Container").empty();

    $(".Main-Container").append(
        `<div class="Requirements-Title">${title}</div>` +
        `<div class="Requirements-Line"></div>` +
        `<div class="Requirements-Items"></div>`
    );

    $.each(Requirements, function(Index, Requirement) {
        $(".Requirements-Items").append(
            "<div class='Requirement-Slot'>" +
                "<span class='Amount'>" + Requirement["Amount"] + "x </span>" +
                "<img src='nui://" + Requirement["Image"] + "'>" +
                "<div class='Requirement-Label'>" +
                    "<span class='Item-Label'>" + Requirement["Label"] + "</span>" +
                "</div>" +
            "</div>"
        );
    });

    // Calculate total width of slots and set line width
    let totalWidth = 0;
    $(".Requirement-Slot").each(function() {
        totalWidth += $(this).outerWidth(true);
    });
    $(".Requirements-Line").css("width", totalWidth + "px");

    $(".Main-Container").fadeIn(500);
}
