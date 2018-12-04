/*
* Copyright (c) 2011-2018 Christoph Tieben (https://c9t0.de)
*
* This Source Code Form is subject to the terms of the Mozilla Public
* License, v. 2.0. If a copy of the MPL was not distributed with this
* file, You can obtain one at http://mozilla.org/MPL/2.0/.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*
* Authored by: Christoph Tieben <ctieben@gmx.de>
*/

public class DoItRight : Gtk.Application {

    public DoItRight() {
        Object( application_id: "com.github.ctieben.doitright",
                flags: ApplicationFlags.FLAGS_NONE  
              );
    }

    protected override void activate() {
        var main_window = new Gtk.ApplicationWindow(this);
        main_window.default_height = 300;
        main_window.default_width = 300;
        main_window.title = "DoItRight!";

        // add label
        var label = new Gtk.Label(_("Many things to do!"));
        main_window.add(label);


        main_window.show_all();
    }

    public static int main(string[] args) {
        var doItRight = new DoItRight();
        return doItRight.run(args);
    }
}
