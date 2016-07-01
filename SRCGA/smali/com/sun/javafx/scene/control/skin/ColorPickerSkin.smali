.class public Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
.super Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;
.source "ColorPickerSkin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$StyleableProperties;,
        Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl",
        "<",
        "Ljavafx/scene/paint/Color;",
        ">;"
    }
.end annotation


# static fields
.field private static final colorNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/scene/paint/Color;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final cssNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/scene/paint/Color;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field colorLabelVisible:Ljavafx/beans/property/BooleanProperty;

.field private colorRect:Ljavafx/scene/shape/Rectangle;

.field private final colorRectHeight:Ljavafx/css/StyleableDoubleProperty;

.field private final colorRectWidth:Ljavafx/css/StyleableDoubleProperty;

.field private final colorRectX:Ljavafx/css/StyleableDoubleProperty;

.field private final colorRectY:Ljavafx/css/StyleableDoubleProperty;

.field private displayNode:Ljavafx/scene/control/Label;

.field private final imageUrl:Ljavafx/css/StyleableStringProperty;

.field private pickerColorBox:Ljavafx/scene/layout/StackPane;

.field private popupContent:Lcom/sun/javafx/scene/control/skin/ColorPalette;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 230
    new-instance v0, Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    .line 231
    new-instance v0, Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x8b

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    .line 234
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->TRANSPARENT:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.transparent"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 235
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.black"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 236
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->BLUE:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.blue"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 237
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->CYAN:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.cyan"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 238
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKBLUE:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.darkblue"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 239
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKCYAN:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.darkcyan"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKGRAY:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.darkgray"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 241
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKGREEN:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.darkgreen"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 242
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKMAGENTA:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.darkmagenta"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 243
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKRED:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.darkred"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 244
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->GRAY:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.gray"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 245
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->GREEN:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.green"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 246
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LIGHTBLUE:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.lightblue"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 247
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LIGHTCYAN:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.lightcyan"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 248
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LIGHTGRAY:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.lightgray"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 249
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LIGHTGREEN:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.lightgreen"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 250
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LIGHTYELLOW:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.lightyellow"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 251
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->MAGENTA:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.magenta"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 252
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->MEDIUMBLUE:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.mediumblue"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 253
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->ORANGE:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.orange"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 254
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->PINK:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.pink"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 255
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->RED:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.red"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 256
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.white"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 257
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->YELLOW:Ljavafx/scene/paint/Color;

    const-string v2, "colorName.yellow"

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 265
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->ALICEBLUE:Ljavafx/scene/paint/Color;

    const-string v2, "aliceblue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 266
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->ANTIQUEWHITE:Ljavafx/scene/paint/Color;

    const-string v2, "antiquewhite"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 267
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->AQUAMARINE:Ljavafx/scene/paint/Color;

    const-string v2, "aquamarine"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 268
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->AZURE:Ljavafx/scene/paint/Color;

    const-string v2, "azure"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 269
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->BEIGE:Ljavafx/scene/paint/Color;

    const-string v2, "beige"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 270
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->BISQUE:Ljavafx/scene/paint/Color;

    const-string v2, "bisque"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 271
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    const-string v2, "black"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 272
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->BLANCHEDALMOND:Ljavafx/scene/paint/Color;

    const-string v2, "blanchedalmond"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 273
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->BLUE:Ljavafx/scene/paint/Color;

    const-string v2, "blue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 274
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->BLUEVIOLET:Ljavafx/scene/paint/Color;

    const-string v2, "blueviolet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 275
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->BROWN:Ljavafx/scene/paint/Color;

    const-string v2, "brown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 276
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->BURLYWOOD:Ljavafx/scene/paint/Color;

    const-string v2, "burlywood"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 277
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->CADETBLUE:Ljavafx/scene/paint/Color;

    const-string v2, "cadetblue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 278
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->CHARTREUSE:Ljavafx/scene/paint/Color;

    const-string v2, "chartreuse"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 279
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->CHOCOLATE:Ljavafx/scene/paint/Color;

    const-string v2, "chocolate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 280
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->CORAL:Ljavafx/scene/paint/Color;

    const-string v2, "coral"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 281
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->CORNFLOWERBLUE:Ljavafx/scene/paint/Color;

    const-string v2, "cornflowerblue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 282
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->CORNSILK:Ljavafx/scene/paint/Color;

    const-string v2, "cornsilk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 283
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->CRIMSON:Ljavafx/scene/paint/Color;

    const-string v2, "crimson"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 284
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->CYAN:Ljavafx/scene/paint/Color;

    const-string v2, "cyan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 285
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKBLUE:Ljavafx/scene/paint/Color;

    const-string v2, "darkblue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 286
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKCYAN:Ljavafx/scene/paint/Color;

    const-string v2, "darkcyan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 287
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKGOLDENROD:Ljavafx/scene/paint/Color;

    const-string v2, "darkgoldenrod"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 288
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKGRAY:Ljavafx/scene/paint/Color;

    const-string v2, "darkgray"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 289
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKGREEN:Ljavafx/scene/paint/Color;

    const-string v2, "darkgreen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 290
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKKHAKI:Ljavafx/scene/paint/Color;

    const-string v2, "darkkhaki"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 291
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKMAGENTA:Ljavafx/scene/paint/Color;

    const-string v2, "darkmagenta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 292
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKOLIVEGREEN:Ljavafx/scene/paint/Color;

    const-string v2, "darkolivegreen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 293
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKORANGE:Ljavafx/scene/paint/Color;

    const-string v2, "darkorange"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 294
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKORCHID:Ljavafx/scene/paint/Color;

    const-string v2, "darkorchid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 295
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKRED:Ljavafx/scene/paint/Color;

    const-string v2, "darkred"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 296
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKSALMON:Ljavafx/scene/paint/Color;

    const-string v2, "darksalmon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 297
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKSEAGREEN:Ljavafx/scene/paint/Color;

    const-string v2, "darkseagreen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 298
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKSLATEBLUE:Ljavafx/scene/paint/Color;

    const-string v2, "darkslateblue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 299
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKSLATEGRAY:Ljavafx/scene/paint/Color;

    const-string v2, "darkslategray"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 300
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKTURQUOISE:Ljavafx/scene/paint/Color;

    const-string v2, "darkturquoise"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 301
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DARKVIOLET:Ljavafx/scene/paint/Color;

    const-string v2, "darkviolet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 302
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DEEPPINK:Ljavafx/scene/paint/Color;

    const-string v2, "deeppink"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 303
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DEEPSKYBLUE:Ljavafx/scene/paint/Color;

    const-string v2, "deepskyblue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 304
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DIMGRAY:Ljavafx/scene/paint/Color;

    const-string v2, "dimgray"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 305
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->DODGERBLUE:Ljavafx/scene/paint/Color;

    const-string v2, "dodgerblue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 306
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->FIREBRICK:Ljavafx/scene/paint/Color;

    const-string v2, "firebrick"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 307
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->FLORALWHITE:Ljavafx/scene/paint/Color;

    const-string v2, "floralwhite"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 308
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->FORESTGREEN:Ljavafx/scene/paint/Color;

    const-string v2, "forestgreen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 309
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->GAINSBORO:Ljavafx/scene/paint/Color;

    const-string v2, "gainsboro"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 310
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->GHOSTWHITE:Ljavafx/scene/paint/Color;

    const-string v2, "ghostwhite"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 311
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->GOLD:Ljavafx/scene/paint/Color;

    const-string v2, "gold"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 312
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->GOLDENROD:Ljavafx/scene/paint/Color;

    const-string v2, "goldenrod"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 313
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->GRAY:Ljavafx/scene/paint/Color;

    const-string v2, "gray"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 314
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->GREEN:Ljavafx/scene/paint/Color;

    const-string v2, "green"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 315
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->GREENYELLOW:Ljavafx/scene/paint/Color;

    const-string v2, "greenyellow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->HONEYDEW:Ljavafx/scene/paint/Color;

    const-string v2, "honeydew"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 317
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->HOTPINK:Ljavafx/scene/paint/Color;

    const-string v2, "hotpink"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 318
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->INDIANRED:Ljavafx/scene/paint/Color;

    const-string v2, "indianred"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 319
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->INDIGO:Ljavafx/scene/paint/Color;

    const-string v2, "indigo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 320
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->IVORY:Ljavafx/scene/paint/Color;

    const-string v2, "ivory"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 321
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->KHAKI:Ljavafx/scene/paint/Color;

    const-string v2, "khaki"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 322
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LAVENDER:Ljavafx/scene/paint/Color;

    const-string v2, "lavender"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 323
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LAVENDERBLUSH:Ljavafx/scene/paint/Color;

    const-string v2, "lavenderblush"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 324
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LAWNGREEN:Ljavafx/scene/paint/Color;

    const-string v2, "lawngreen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 325
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LEMONCHIFFON:Ljavafx/scene/paint/Color;

    const-string v2, "lemonchiffon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 326
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LIGHTBLUE:Ljavafx/scene/paint/Color;

    const-string v2, "lightblue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 327
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LIGHTCORAL:Ljavafx/scene/paint/Color;

    const-string v2, "lightcoral"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 328
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LIGHTCYAN:Ljavafx/scene/paint/Color;

    const-string v2, "lightcyan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 329
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LIGHTGOLDENRODYELLOW:Ljavafx/scene/paint/Color;

    const-string v2, "lightgoldenrodyellow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 330
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LIGHTGRAY:Ljavafx/scene/paint/Color;

    const-string v2, "lightgray"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 331
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LIGHTGREEN:Ljavafx/scene/paint/Color;

    const-string v2, "lightgreen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 332
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LIGHTPINK:Ljavafx/scene/paint/Color;

    const-string v2, "lightpink"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 333
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LIGHTSALMON:Ljavafx/scene/paint/Color;

    const-string v2, "lightsalmon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 334
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LIGHTSEAGREEN:Ljavafx/scene/paint/Color;

    const-string v2, "lightseagreen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 335
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LIGHTSKYBLUE:Ljavafx/scene/paint/Color;

    const-string v2, "lightskyblue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 336
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LIGHTSLATEGRAY:Ljavafx/scene/paint/Color;

    const-string v2, "lightslategray"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 337
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LIGHTSTEELBLUE:Ljavafx/scene/paint/Color;

    const-string v2, "lightsteelblue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 338
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LIGHTYELLOW:Ljavafx/scene/paint/Color;

    const-string v2, "lightyellow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 339
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LIME:Ljavafx/scene/paint/Color;

    const-string v2, "lime"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 340
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LIMEGREEN:Ljavafx/scene/paint/Color;

    const-string v2, "limegreen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 341
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->LINEN:Ljavafx/scene/paint/Color;

    const-string v2, "linen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 342
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->MAGENTA:Ljavafx/scene/paint/Color;

    const-string v2, "magenta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 343
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->MAROON:Ljavafx/scene/paint/Color;

    const-string v2, "maroon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 344
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->MEDIUMAQUAMARINE:Ljavafx/scene/paint/Color;

    const-string v2, "mediumaquamarine"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 345
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->MEDIUMBLUE:Ljavafx/scene/paint/Color;

    const-string v2, "mediumblue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 346
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->MEDIUMORCHID:Ljavafx/scene/paint/Color;

    const-string v2, "mediumorchid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 347
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->MEDIUMPURPLE:Ljavafx/scene/paint/Color;

    const-string v2, "mediumpurple"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 348
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->MEDIUMSEAGREEN:Ljavafx/scene/paint/Color;

    const-string v2, "mediumseagreen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 349
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->MEDIUMSLATEBLUE:Ljavafx/scene/paint/Color;

    const-string v2, "mediumslateblue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 350
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->MEDIUMSPRINGGREEN:Ljavafx/scene/paint/Color;

    const-string v2, "mediumspringgreen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 351
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->MEDIUMTURQUOISE:Ljavafx/scene/paint/Color;

    const-string v2, "mediumturquoise"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 352
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->MEDIUMVIOLETRED:Ljavafx/scene/paint/Color;

    const-string v2, "mediumvioletred"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 353
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->MIDNIGHTBLUE:Ljavafx/scene/paint/Color;

    const-string v2, "midnightblue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 354
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->MINTCREAM:Ljavafx/scene/paint/Color;

    const-string v2, "mintcream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 355
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->MISTYROSE:Ljavafx/scene/paint/Color;

    const-string v2, "mistyrose"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 356
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->MOCCASIN:Ljavafx/scene/paint/Color;

    const-string v2, "moccasin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 357
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->NAVAJOWHITE:Ljavafx/scene/paint/Color;

    const-string v2, "navajowhite"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 358
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->NAVY:Ljavafx/scene/paint/Color;

    const-string v2, "navy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 359
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->OLDLACE:Ljavafx/scene/paint/Color;

    const-string v2, "oldlace"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 360
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->OLIVE:Ljavafx/scene/paint/Color;

    const-string v2, "olive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 361
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->OLIVEDRAB:Ljavafx/scene/paint/Color;

    const-string v2, "olivedrab"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 362
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->ORANGE:Ljavafx/scene/paint/Color;

    const-string v2, "orange"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 363
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->ORANGERED:Ljavafx/scene/paint/Color;

    const-string v2, "orangered"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 364
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->ORCHID:Ljavafx/scene/paint/Color;

    const-string v2, "orchid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 365
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->PALEGOLDENROD:Ljavafx/scene/paint/Color;

    const-string v2, "palegoldenrod"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 366
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->PALEGREEN:Ljavafx/scene/paint/Color;

    const-string v2, "palegreen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 367
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->PALETURQUOISE:Ljavafx/scene/paint/Color;

    const-string v2, "paleturquoise"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 368
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->PALEVIOLETRED:Ljavafx/scene/paint/Color;

    const-string v2, "palevioletred"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 369
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->PAPAYAWHIP:Ljavafx/scene/paint/Color;

    const-string v2, "papayawhip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 370
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->PEACHPUFF:Ljavafx/scene/paint/Color;

    const-string v2, "peachpuff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 371
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->PERU:Ljavafx/scene/paint/Color;

    const-string v2, "peru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 372
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->PINK:Ljavafx/scene/paint/Color;

    const-string v2, "pink"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 373
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->PLUM:Ljavafx/scene/paint/Color;

    const-string v2, "plum"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 374
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->POWDERBLUE:Ljavafx/scene/paint/Color;

    const-string v2, "powderblue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 375
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->PURPLE:Ljavafx/scene/paint/Color;

    const-string v2, "purple"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 376
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->RED:Ljavafx/scene/paint/Color;

    const-string v2, "red"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 377
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->ROSYBROWN:Ljavafx/scene/paint/Color;

    const-string v2, "rosybrown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 378
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->ROYALBLUE:Ljavafx/scene/paint/Color;

    const-string v2, "royalblue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 379
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->SADDLEBROWN:Ljavafx/scene/paint/Color;

    const-string v2, "saddlebrown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 380
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->SALMON:Ljavafx/scene/paint/Color;

    const-string v2, "salmon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 381
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->SANDYBROWN:Ljavafx/scene/paint/Color;

    const-string v2, "sandybrown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 382
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->SEAGREEN:Ljavafx/scene/paint/Color;

    const-string v2, "seagreen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 383
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->SEASHELL:Ljavafx/scene/paint/Color;

    const-string v2, "seashell"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 384
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->SIENNA:Ljavafx/scene/paint/Color;

    const-string v2, "sienna"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 385
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->SILVER:Ljavafx/scene/paint/Color;

    const-string v2, "silver"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 386
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->SKYBLUE:Ljavafx/scene/paint/Color;

    const-string v2, "skyblue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 387
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->SLATEBLUE:Ljavafx/scene/paint/Color;

    const-string v2, "slateblue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 388
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->SLATEGRAY:Ljavafx/scene/paint/Color;

    const-string v2, "slategray"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 389
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->SNOW:Ljavafx/scene/paint/Color;

    const-string v2, "snow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 390
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->SPRINGGREEN:Ljavafx/scene/paint/Color;

    const-string v2, "springgreen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 391
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->STEELBLUE:Ljavafx/scene/paint/Color;

    const-string v2, "steelblue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 392
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->TAN:Ljavafx/scene/paint/Color;

    const-string v2, "tan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 393
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->TEAL:Ljavafx/scene/paint/Color;

    const-string v2, "teal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 394
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->THISTLE:Ljavafx/scene/paint/Color;

    const-string v2, "thistle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 395
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->TOMATO:Ljavafx/scene/paint/Color;

    const-string v2, "tomato"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 396
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->TRANSPARENT:Ljavafx/scene/paint/Color;

    const-string v2, "transparent"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 397
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->TURQUOISE:Ljavafx/scene/paint/Color;

    const-string v2, "turquoise"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 398
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->VIOLET:Ljavafx/scene/paint/Color;

    const-string v2, "violet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 399
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->WHEAT:Ljavafx/scene/paint/Color;

    const-string v2, "wheat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 400
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    const-string v2, "white"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 401
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->WHITESMOKE:Ljavafx/scene/paint/Color;

    const-string v2, "whitesmoke"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 402
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->YELLOW:Ljavafx/scene/paint/Color;

    const-string v2, "yellow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 403
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    sget-object v1, Ljavafx/scene/paint/Color;->YELLOWGREEN:Ljavafx/scene/paint/Color;

    const-string v2, "yellowgreen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 404
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/ColorPicker;)V
    .locals 10

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-object v1, p1

    .local v1, "colorPicker":Ljavafx/scene/control/ColorPicker;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/ColorPickerBehavior;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/ColorPickerBehavior;-><init>(Ljavafx/scene/control/ColorPicker;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;-><init>(Ljavafx/scene/control/ComboBoxBase;Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;)V

    .line 79
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$1;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;Z)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorLabelVisible:Ljavafx/beans/property/BooleanProperty;

    .line 100
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$2;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$2;-><init>(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->imageUrl:Ljavafx/css/StyleableStringProperty;

    .line 125
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$3;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$3;-><init>(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;D)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorRectWidth:Ljavafx/css/StyleableDoubleProperty;

    .line 139
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$4;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$4;-><init>(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;D)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorRectHeight:Ljavafx/css/StyleableDoubleProperty;

    .line 153
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$5;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$5;-><init>(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;D)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorRectX:Ljavafx/css/StyleableDoubleProperty;

    .line 167
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$6;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$6;-><init>(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;D)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorRectY:Ljavafx/css/StyleableDoubleProperty;

    .line 184
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->updateComboBoxMode()V

    .line 185
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ColorPicker;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "VALUE"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 188
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/Label;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljavafx/scene/control/Label;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->displayNode:Ljavafx/scene/control/Label;

    .line 189
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->displayNode:Ljavafx/scene/control/Label;

    invoke-virtual {v2}, Ljavafx/scene/control/Label;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "color-picker-label"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 190
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->displayNode:Ljavafx/scene/control/Label;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Label;->setManaged(Z)V

    .line 193
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$PickerColorBox;-><init>(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$1;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->pickerColorBox:Ljavafx/scene/layout/StackPane;

    .line 194
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->pickerColorBox:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "picker-color"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 195
    move-object v2, v0

    new-instance v3, Ljavafx/scene/shape/Rectangle;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-wide/high16 v5, 0x4028000000000000L    # 12.0

    const-wide/high16 v7, 0x4028000000000000L    # 12.0

    invoke-direct {v4, v5, v6, v7, v8}, Ljavafx/scene/shape/Rectangle;-><init>(DD)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorRect:Ljavafx/scene/shape/Rectangle;

    .line 196
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorRect:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v2}, Ljavafx/scene/shape/Rectangle;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "picker-color-rect"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 198
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->updateColor()V

    .line 200
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->pickerColorBox:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorRect:Ljavafx/scene/shape/Rectangle;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 201
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->displayNode:Ljavafx/scene/control/Label;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->pickerColorBox:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Label;->setGraphic(Ljavafx/scene/Node;)V

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/control/Label;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->displayNode:Ljavafx/scene/control/Label;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    return-object v0
.end method

.method static synthetic access$1000(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/shape/Rectangle;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorRect:Ljavafx/scene/shape/Rectangle;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    return-object v0
.end method

.method static synthetic access$1100(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/css/StyleableDoubleProperty;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorRectY:Ljavafx/css/StyleableDoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    return-object v0
.end method

.method static synthetic access$1200(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/css/StyleableDoubleProperty;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorRectWidth:Ljavafx/css/StyleableDoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    return-object v0
.end method

.method static synthetic access$1300(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/css/StyleableDoubleProperty;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorRectHeight:Ljavafx/css/StyleableDoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    return-object v0
.end method

.method static synthetic access$1400(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/css/StyleableStringProperty;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->imageUrl:Ljavafx/css/StyleableStringProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/layout/StackPane;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->pickerColorBox:Ljavafx/scene/layout/StackPane;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    return-object v0
.end method

.method static synthetic access$900(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/css/StyleableDoubleProperty;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorRectX:Ljavafx/css/StyleableDoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    return-object v0
.end method

.method static colorDisplayName(Ljavafx/scene/paint/Color;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "c":Ljavafx/scene/paint/Color;
    move-object v2, v0

    if-eqz v2, :cond_1

    .line 408
    sget-object v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 409
    .local v1, "displayName":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 410
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->formatHexString(Ljavafx/scene/paint/Color;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 412
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .line 414
    .end local v0    # "c":Ljavafx/scene/paint/Color;
    :goto_0
    return-object v0

    .end local v1    # "displayName":Ljava/lang/String;
    .restart local v0    # "c":Ljavafx/scene/paint/Color;
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method static formatHexString(Ljavafx/scene/paint/Color;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 439
    move-object v0, p0

    .local v0, "c":Ljavafx/scene/paint/Color;
    move-object v1, v0

    if-eqz v1, :cond_0

    .line 440
    const/4 v1, 0x0

    check-cast v1, Ljava/util/Locale;

    const-string v2, "#%02x%02x%02x"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x0

    move-object v6, v0

    .line 441
    invoke-virtual {v6}, Ljavafx/scene/paint/Color;->getRed()D

    move-result-wide v6

    const-wide v8, 0x406fe00000000000L    # 255.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x1

    move-object v6, v0

    .line 442
    invoke-virtual {v6}, Ljavafx/scene/paint/Color;->getGreen()D

    move-result-wide v6

    const-wide v8, 0x406fe00000000000L    # 255.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x2

    move-object v6, v0

    .line 443
    invoke-virtual {v6}, Ljavafx/scene/paint/Color;->getBlue()D

    move-result-wide v6

    const-wide v8, 0x406fe00000000000L    # 255.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 440
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 445
    .end local v0    # "c":Ljavafx/scene/paint/Color;
    :goto_0
    return-object v0

    .restart local v0    # "c":Ljavafx/scene/paint/Color;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getClassCssMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 650
    # getter for: Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$StyleableProperties;->access$1500()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorPicker."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "key":Ljava/lang/String;
    return-object v0
.end method

.method static tooltipString(Ljavafx/scene/paint/Color;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "c":Ljavafx/scene/paint/Color;
    move-object v4, v0

    if-eqz v4, :cond_2

    .line 420
    const-string v4, ""

    move-object v1, v4

    .line 421
    .local v1, "tooltipStr":Ljava/lang/String;
    sget-object v4, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    move-object v5, v0

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    .line 422
    .local v2, "displayName":Ljava/lang/String;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 426
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->formatHexString(Ljavafx/scene/paint/Color;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 428
    sget-object v4, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->cssNameMap:Ljava/util/Map;

    move-object v5, v0

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 429
    .local v3, "cssName":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 430
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (css: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 432
    :cond_1
    move-object v4, v1

    move-object v0, v4

    .line 434
    .end local v0    # "c":Ljavafx/scene/paint/Color;
    :goto_0
    return-object v0

    .end local v1    # "tooltipStr":Ljava/lang/String;
    .end local v2    # "displayName":Ljava/lang/String;
    .end local v3    # "cssName":Ljava/lang/String;
    .restart local v0    # "c":Ljavafx/scene/paint/Color;
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method private updateColor()V
    .locals 4

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ColorPicker;

    move-object v1, v2

    .line 491
    .local v1, "colorPicker":Ljavafx/scene/control/ColorPicker;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorRect:Ljavafx/scene/shape/Rectangle;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ColorPicker;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/paint/Paint;

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Rectangle;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 492
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorLabelVisible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->displayNode:Ljavafx/scene/control/Label;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ColorPicker;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/paint/Color;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorDisplayName(Ljavafx/scene/paint/Color;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->displayNode:Ljavafx/scene/control/Label;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateComboBoxMode()V
    .locals 4

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v1, v2

    .line 223
    .local v1, "styleClass":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, v1

    const-string v3, "button"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/control/skin/ComboBoxMode;->BUTTON:Lcom/sun/javafx/scene/control/skin/ComboBoxMode;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->setMode(Lcom/sun/javafx/scene/control/skin/ComboBoxMode;)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    move-object v2, v1

    const-string v3, "split-button"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/control/skin/ComboBoxMode;->SPLITBUTTON:Lcom/sun/javafx/scene/control/skin/ComboBoxMode;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->setMode(Lcom/sun/javafx/scene/control/skin/ComboBoxMode;)V

    goto :goto_0
.end method


# virtual methods
.method protected computePrefWidth(DDDDD)D
    .locals 31

    .prologue
    .line 206
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorLabelVisible:Ljavafx/beans/property/BooleanProperty;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v17

    if-nez v17, :cond_0

    .line 207
    move-object/from16 v17, v1

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-wide/from16 v26, v10

    invoke-super/range {v17 .. v27}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->computePrefWidth(DDDDD)D

    move-result-wide v17

    move-wide/from16 v1, v17

    .line 218
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    :goto_0
    return-wide v1

    .line 209
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    :cond_0
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->displayNode:Ljavafx/scene/control/Label;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/control/Label;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v12, v17

    .line 210
    .local v12, "displayNodeText":Ljava/lang/String;
    const-wide/16 v17, 0x0

    move-wide/from16 v13, v17

    .line 211
    .local v13, "width":D
    sget-object v17, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorNameMap:Ljava/util/Map;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v15, v17

    :goto_1
    move-object/from16 v17, v15

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v17, v15

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v16, v17

    .line 212
    .local v16, "name":Ljava/lang/String;
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->displayNode:Ljavafx/scene/control/Label;

    move-object/from16 v17, v0

    move-object/from16 v18, v16

    invoke-virtual/range {v17 .. v18}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 213
    move-wide/from16 v17, v13

    move-object/from16 v19, v1

    move-wide/from16 v20, v2

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    move-wide/from16 v28, v10

    invoke-super/range {v19 .. v29}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->computePrefWidth(DDDDD)D

    move-result-wide v19

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->max(DD)D

    move-result-wide v17

    move-wide/from16 v13, v17

    .line 214
    goto :goto_1

    .line 215
    .end local v16    # "name":Ljava/lang/String;
    :cond_1
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->displayNode:Ljavafx/scene/control/Label;

    move-object/from16 v17, v0

    sget-object v18, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->formatHexString(Ljavafx/scene/paint/Color;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 216
    move-wide/from16 v17, v13

    move-object/from16 v19, v1

    move-wide/from16 v20, v2

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    move-wide/from16 v28, v10

    invoke-super/range {v19 .. v29}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->computePrefWidth(DDDDD)D

    move-result-wide v19

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->max(DD)D

    move-result-wide v17

    move-wide/from16 v13, v17

    .line 217
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->displayNode:Ljavafx/scene/control/Label;

    move-object/from16 v17, v0

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 218
    move-wide/from16 v17, v13

    move-wide/from16 v1, v17

    goto/16 :goto_0
.end method

.method protected focusLost()V
    .locals 0

    .prologue
    .line 460
    return-void
.end method

.method protected getConverter()Ljavafx/util/StringConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/StringConverter",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 662
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    return-object v0
.end method

.method public getCssMetaData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 658
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    return-object v0
.end method

.method public getDisplayNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->displayNode:Ljavafx/scene/control/Label;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    return-object v0
.end method

.method protected getEditor()Ljavafx/scene/control/TextField;
    .locals 2

    .prologue
    .line 669
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    return-object v0
.end method

.method protected getPopupContent()Ljavafx/scene/Node;
    .locals 6

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->popupContent:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    if-nez v1, :cond_0

    .line 452
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/ColorPalette;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ColorPicker;

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/ColorPalette;-><init>(Ljavafx/scene/control/ColorPicker;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->popupContent:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    .line 453
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->popupContent:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getPopup()Ljavafx/scene/control/PopupControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->setPopupControl(Ljavafx/scene/control/PopupControl;)V

    .line 455
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->popupContent:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    return-object v0
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 471
    const-string v2, "SHOWING"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 472
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->show()V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->popupContent:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->isCustomColorDialogShowing()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->hide()V

    goto :goto_0

    .line 477
    :cond_2
    const-string v2, "VALUE"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->updateColor()V

    .line 480
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->popupContent:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public imageUrlProperty()Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->imageUrl:Ljavafx/css/StyleableStringProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    return-object v0
.end method

.method protected layoutChildren(DDDD)V
    .locals 19

    .prologue
    .line 508
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "w":D
    move-wide/from16 v7, p7

    .local v7, "h":D
    move-object v9, v0

    invoke-direct {v9}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->updateComboBoxMode()V

    .line 509
    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v3

    move-wide v14, v5

    move-wide/from16 v16, v7

    invoke-super/range {v9 .. v17}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->layoutChildren(DDDD)V

    .line 510
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-object v2, v0

    invoke-super {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->show()V

    .line 464
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ColorPicker;

    move-object v1, v2

    .line 465
    .local v1, "colorPicker":Ljavafx/scene/control/ColorPicker;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->popupContent:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ColorPicker;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/paint/Color;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->updateSelection(Ljavafx/scene/paint/Color;)V

    .line 466
    return-void
.end method

.method public syncWithAutoUpdate()V
    .locals 2

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getPopup()Ljavafx/scene/control/PopupControl;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControl;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->hide()V

    .line 504
    :cond_0
    return-void
.end method
