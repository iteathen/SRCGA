.class public Lcom/sun/javafx/scene/control/skin/ColorPalette;
.super Ljavafx/scene/layout/Region;
.source "ColorPalette.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;,
        Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    }
.end annotation


# static fields
.field private static final NUM_OF_COLORS:I

.field private static final NUM_OF_COLUMNS:I = 0xc

.field private static final NUM_OF_ROWS:I

.field private static RAW_VALUES:[D = null

.field private static final SQUARE_SIZE:I = 0xf


# instance fields
.field private colorPicker:Ljavafx/scene/control/ColorPicker;

.field colorPickerGrid:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;

.field private contextMenu:Ljavafx/scene/control/ContextMenu;

.field customColorDialog:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

.field private final customColorGrid:Ljavafx/scene/layout/GridPane;

.field private final customColorLabel:Ljavafx/scene/control/Label;

.field private customColorLastRowLength:I

.field final customColorLink:Ljavafx/scene/control/Hyperlink;

.field private customColorNumber:I

.field private customColorRows:I

.field private dragDetected:Z

.field private focusedSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

.field private final hoverSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

.field private mouseDragColor:Ljavafx/scene/paint/Color;

.field private popupControl:Ljavafx/scene/control/PopupControl;

.field private final separator:Ljavafx/scene/control/Separator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 560
    const/16 v0, 0x168

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/ColorPalette;->RAW_VALUES:[D

    .line 684
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPalette;->RAW_VALUES:[D

    array-length v0, v0

    const/4 v1, 0x3

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/sun/javafx/scene/control/skin/ColorPalette;->NUM_OF_COLORS:I

    .line 685
    sget v0, Lcom/sun/javafx/scene/control/skin/ColorPalette;->NUM_OF_COLORS:I

    const/16 v1, 0xc

    div-int/lit8 v0, v0, 0xc

    sput v0, Lcom/sun/javafx/scene/control/skin/ColorPalette;->NUM_OF_ROWS:I

    return-void

    .line 560
    :array_0
    .array-data 8
        0x406fe00000000000L    # 255.0
        0x406fe00000000000L    # 255.0
        0x406fe00000000000L    # 255.0
        0x406e400000000000L    # 242.0
        0x406e400000000000L    # 242.0
        0x406e400000000000L    # 242.0
        0x406cc00000000000L    # 230.0
        0x406cc00000000000L    # 230.0
        0x406cc00000000000L    # 230.0
        0x4069800000000000L    # 204.0
        0x4069800000000000L    # 204.0
        0x4069800000000000L    # 204.0
        0x4066600000000000L    # 179.0
        0x4066600000000000L    # 179.0
        0x4066600000000000L    # 179.0
        0x4063200000000000L    # 153.0
        0x4063200000000000L    # 153.0
        0x4063200000000000L    # 153.0
        0x4060000000000000L    # 128.0
        0x4060000000000000L    # 128.0
        0x4060000000000000L    # 128.0
        0x4059800000000000L    # 102.0
        0x4059800000000000L    # 102.0
        0x4059800000000000L    # 102.0
        0x4053400000000000L    # 77.0
        0x4053400000000000L    # 77.0
        0x4053400000000000L    # 77.0
        0x4049800000000000L    # 51.0
        0x4049800000000000L    # 51.0
        0x4049800000000000L    # 51.0
        0x403a000000000000L    # 26.0
        0x403a000000000000L    # 26.0
        0x403a000000000000L    # 26.0
        0x0
        0x0
        0x0
        0x0
        0x4049800000000000L    # 51.0
        0x4049800000000000L    # 51.0
        0x0
        0x403a000000000000L    # 26.0
        0x4060000000000000L    # 128.0
        0x403a000000000000L    # 26.0
        0x0
        0x405a000000000000L    # 104.0
        0x4049800000000000L    # 51.0
        0x0
        0x4049800000000000L    # 51.0
        0x4053400000000000L    # 77.0
        0x0
        0x403a000000000000L    # 26.0
        0x4063200000000000L    # 153.0
        0x0
        0x0
        0x4063200000000000L    # 153.0
        0x4049800000000000L    # 51.0
        0x0
        0x4063200000000000L    # 153.0
        0x4053400000000000L    # 77.0
        0x0
        0x4063200000000000L    # 153.0
        0x4059800000000000L    # 102.0
        0x0
        0x4063200000000000L    # 153.0
        0x4063200000000000L    # 153.0
        0x0
        0x4059800000000000L    # 102.0
        0x4059800000000000L    # 102.0
        0x0
        0x0
        0x4049800000000000L    # 51.0
        0x0
        0x403a000000000000L    # 26.0
        0x4053400000000000L    # 77.0
        0x4053400000000000L    # 77.0
        0x403a000000000000L    # 26.0
        0x4049800000000000L    # 51.0
        0x4063200000000000L    # 153.0
        0x4049800000000000L    # 51.0
        0x403a000000000000L    # 26.0
        0x4060000000000000L    # 128.0
        0x4053400000000000L    # 77.0
        0x403a000000000000L    # 26.0
        0x4053400000000000L    # 77.0
        0x4059800000000000L    # 102.0
        0x403a000000000000L    # 26.0
        0x4049800000000000L    # 51.0
        0x4066600000000000L    # 179.0
        0x403a000000000000L    # 26.0
        0x403a000000000000L    # 26.0
        0x4066600000000000L    # 179.0
        0x4053400000000000L    # 77.0
        0x403a000000000000L    # 26.0
        0x4066600000000000L    # 179.0
        0x4059800000000000L    # 102.0
        0x403a000000000000L    # 26.0
        0x4066600000000000L    # 179.0
        0x4060000000000000L    # 128.0
        0x403a000000000000L    # 26.0
        0x4066600000000000L    # 179.0
        0x4066600000000000L    # 179.0
        0x403a000000000000L    # 26.0
        0x4060000000000000L    # 128.0
        0x4060000000000000L    # 128.0
        0x403a000000000000L    # 26.0
        0x403a000000000000L    # 26.0
        0x4053400000000000L    # 77.0
        0x403a000000000000L    # 26.0
        0x4049800000000000L    # 51.0
        0x4059800000000000L    # 102.0
        0x4059800000000000L    # 102.0
        0x4049800000000000L    # 51.0
        0x4053400000000000L    # 77.0
        0x4066600000000000L    # 179.0
        0x4053400000000000L    # 77.0
        0x4049800000000000L    # 51.0
        0x4063200000000000L    # 153.0
        0x4059800000000000L    # 102.0
        0x4049800000000000L    # 51.0
        0x4059800000000000L    # 102.0
        0x4060000000000000L    # 128.0
        0x4049800000000000L    # 51.0
        0x4053400000000000L    # 77.0
        0x4069800000000000L    # 204.0
        0x4049800000000000L    # 51.0
        0x4049800000000000L    # 51.0
        0x4069800000000000L    # 204.0
        0x4059800000000000L    # 102.0
        0x4049800000000000L    # 51.0
        0x4069800000000000L    # 204.0
        0x4060000000000000L    # 128.0
        0x4049800000000000L    # 51.0
        0x4069800000000000L    # 204.0
        0x4063200000000000L    # 153.0
        0x4049800000000000L    # 51.0
        0x4069800000000000L    # 204.0
        0x4069800000000000L    # 204.0
        0x4049800000000000L    # 51.0
        0x4063200000000000L    # 153.0
        0x4063200000000000L    # 153.0
        0x4049800000000000L    # 51.0
        0x4049800000000000L    # 51.0
        0x4059800000000000L    # 102.0
        0x4049800000000000L    # 51.0
        0x4053400000000000L    # 77.0
        0x4060000000000000L    # 128.0
        0x4060000000000000L    # 128.0
        0x4053400000000000L    # 77.0
        0x4059800000000000L    # 102.0
        0x4069800000000000L    # 204.0
        0x4059800000000000L    # 102.0
        0x4053400000000000L    # 77.0
        0x4066600000000000L    # 179.0
        0x4060000000000000L    # 128.0
        0x4053400000000000L    # 77.0
        0x4060000000000000L    # 128.0
        0x4063200000000000L    # 153.0
        0x4053400000000000L    # 77.0
        0x4059800000000000L    # 102.0
        0x406cc00000000000L    # 230.0
        0x4053400000000000L    # 77.0
        0x4053400000000000L    # 77.0
        0x406cc00000000000L    # 230.0
        0x4060000000000000L    # 128.0
        0x4053400000000000L    # 77.0
        0x406cc00000000000L    # 230.0
        0x4063200000000000L    # 153.0
        0x4053400000000000L    # 77.0
        0x406cc00000000000L    # 230.0
        0x4066600000000000L    # 179.0
        0x4053400000000000L    # 77.0
        0x406cc00000000000L    # 230.0
        0x406cc00000000000L    # 230.0
        0x4053400000000000L    # 77.0
        0x4066600000000000L    # 179.0
        0x4066600000000000L    # 179.0
        0x4053400000000000L    # 77.0
        0x4053400000000000L    # 77.0
        0x4060000000000000L    # 128.0
        0x4053400000000000L    # 77.0
        0x4059800000000000L    # 102.0
        0x4063200000000000L    # 153.0
        0x4063200000000000L    # 153.0
        0x4059800000000000L    # 102.0
        0x4060000000000000L    # 128.0
        0x406cc00000000000L    # 230.0
        0x4060000000000000L    # 128.0
        0x4059800000000000L    # 102.0
        0x4069800000000000L    # 204.0
        0x4063200000000000L    # 153.0
        0x4059800000000000L    # 102.0
        0x4063200000000000L    # 153.0
        0x4066600000000000L    # 179.0
        0x4059800000000000L    # 102.0
        0x4060000000000000L    # 128.0
        0x406fe00000000000L    # 255.0
        0x4059800000000000L    # 102.0
        0x4059800000000000L    # 102.0
        0x406fe00000000000L    # 255.0
        0x4063200000000000L    # 153.0
        0x4059800000000000L    # 102.0
        0x406fe00000000000L    # 255.0
        0x4066600000000000L    # 179.0
        0x4059800000000000L    # 102.0
        0x406fe00000000000L    # 255.0
        0x4069800000000000L    # 204.0
        0x4059800000000000L    # 102.0
        0x406fe00000000000L    # 255.0
        0x406fe00000000000L    # 255.0
        0x4053400000000000L    # 77.0
        0x4069800000000000L    # 204.0
        0x4069800000000000L    # 204.0
        0x4059800000000000L    # 102.0
        0x4059800000000000L    # 102.0
        0x4063200000000000L    # 153.0
        0x4059800000000000L    # 102.0
        0x4060000000000000L    # 128.0
        0x4066600000000000L    # 179.0
        0x4066600000000000L    # 179.0
        0x4060000000000000L    # 128.0
        0x4063200000000000L    # 153.0
        0x406fe00000000000L    # 255.0
        0x4063200000000000L    # 153.0
        0x4060000000000000L    # 128.0
        0x406cc00000000000L    # 230.0
        0x4066600000000000L    # 179.0
        0x4060000000000000L    # 128.0
        0x4066600000000000L    # 179.0
        0x4069800000000000L    # 204.0
        0x4060000000000000L    # 128.0
        0x4063200000000000L    # 153.0
        0x406fe00000000000L    # 255.0
        0x4060000000000000L    # 128.0
        0x4060000000000000L    # 128.0
        0x406fe00000000000L    # 255.0
        0x4063200000000000L    # 153.0
        0x4060000000000000L    # 128.0
        0x406fe00000000000L    # 255.0
        0x4069800000000000L    # 204.0
        0x4060000000000000L    # 128.0
        0x406fe00000000000L    # 255.0
        0x406cc00000000000L    # 230.0
        0x4059800000000000L    # 102.0
        0x406fe00000000000L    # 255.0
        0x406fe00000000000L    # 255.0
        0x4059800000000000L    # 102.0
        0x406cc00000000000L    # 230.0
        0x406cc00000000000L    # 230.0
        0x4060000000000000L    # 128.0
        0x4060000000000000L    # 128.0
        0x4066600000000000L    # 179.0
        0x4060000000000000L    # 128.0
        0x4063200000000000L    # 153.0
        0x4069800000000000L    # 204.0
        0x4069800000000000L    # 204.0
        0x4063200000000000L    # 153.0
        0x4066600000000000L    # 179.0
        0x406fe00000000000L    # 255.0
        0x4066600000000000L    # 179.0
        0x4063200000000000L    # 153.0
        0x406fe00000000000L    # 255.0
        0x4069800000000000L    # 204.0
        0x4063200000000000L    # 153.0
        0x4069800000000000L    # 204.0
        0x406cc00000000000L    # 230.0
        0x4063200000000000L    # 153.0
        0x4066600000000000L    # 179.0
        0x406fe00000000000L    # 255.0
        0x4063200000000000L    # 153.0
        0x4063200000000000L    # 153.0
        0x406fe00000000000L    # 255.0
        0x4066600000000000L    # 179.0
        0x4060000000000000L    # 128.0
        0x406fe00000000000L    # 255.0
        0x4069800000000000L    # 204.0
        0x4063200000000000L    # 153.0
        0x406fe00000000000L    # 255.0
        0x406cc00000000000L    # 230.0
        0x4060000000000000L    # 128.0
        0x406fe00000000000L    # 255.0
        0x406fe00000000000L    # 255.0
        0x4060000000000000L    # 128.0
        0x406cc00000000000L    # 230.0
        0x406cc00000000000L    # 230.0
        0x4063200000000000L    # 153.0
        0x4063200000000000L    # 153.0
        0x4069800000000000L    # 204.0
        0x4063200000000000L    # 153.0
        0x4066600000000000L    # 179.0
        0x406cc00000000000L    # 230.0
        0x406cc00000000000L    # 230.0
        0x4066600000000000L    # 179.0
        0x4069800000000000L    # 204.0
        0x406fe00000000000L    # 255.0
        0x4069800000000000L    # 204.0
        0x4066600000000000L    # 179.0
        0x406fe00000000000L    # 255.0
        0x406cc00000000000L    # 230.0
        0x4066600000000000L    # 179.0
        0x406cc00000000000L    # 230.0
        0x406cc00000000000L    # 230.0
        0x4066600000000000L    # 179.0
        0x4069800000000000L    # 204.0
        0x406fe00000000000L    # 255.0
        0x4066600000000000L    # 179.0
        0x4066600000000000L    # 179.0
        0x406fe00000000000L    # 255.0
        0x4066600000000000L    # 179.0
        0x4063200000000000L    # 153.0
        0x406fe00000000000L    # 255.0
        0x406cc00000000000L    # 230.0
        0x4066600000000000L    # 179.0
        0x406fe00000000000L    # 255.0
        0x406cc00000000000L    # 230.0
        0x4063200000000000L    # 153.0
        0x406fe00000000000L    # 255.0
        0x406fe00000000000L    # 255.0
        0x4063200000000000L    # 153.0
        0x406cc00000000000L    # 230.0
        0x406cc00000000000L    # 230.0
        0x4066600000000000L    # 179.0
        0x4066600000000000L    # 179.0
        0x406cc00000000000L    # 230.0
        0x4066600000000000L    # 179.0
        0x4069800000000000L    # 204.0
        0x406fe00000000000L    # 255.0
        0x406fe00000000000L    # 255.0
        0x4069800000000000L    # 204.0
        0x406cc00000000000L    # 230.0
        0x406fe00000000000L    # 255.0
        0x406cc00000000000L    # 230.0
        0x4069800000000000L    # 204.0
        0x406fe00000000000L    # 255.0
        0x406fe00000000000L    # 255.0
        0x4069800000000000L    # 204.0
        0x406fe00000000000L    # 255.0
        0x406fe00000000000L    # 255.0
        0x4069800000000000L    # 204.0
        0x406cc00000000000L    # 230.0
        0x406fe00000000000L    # 255.0
        0x4069800000000000L    # 204.0
        0x4069800000000000L    # 204.0
        0x406fe00000000000L    # 255.0
        0x4069800000000000L    # 204.0
        0x4066600000000000L    # 179.0
        0x406fe00000000000L    # 255.0
        0x406cc00000000000L    # 230.0
        0x4069800000000000L    # 204.0
        0x406fe00000000000L    # 255.0
        0x406fe00000000000L    # 255.0
        0x4066600000000000L    # 179.0
        0x406fe00000000000L    # 255.0
        0x406fe00000000000L    # 255.0
        0x4069800000000000L    # 204.0
        0x406cc00000000000L    # 230.0
        0x406cc00000000000L    # 230.0
        0x4069800000000000L    # 204.0
        0x4069800000000000L    # 204.0
        0x406fe00000000000L    # 255.0
        0x4069800000000000L    # 204.0
    .end array-data
.end method

.method public constructor <init>(Ljavafx/scene/control/ColorPicker;)V
    .locals 9

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, p1

    .local v1, "colorPicker":Ljavafx/scene/control/ColorPicker;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/Region;-><init>()V

    .line 73
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/Hyperlink;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "customColorLink"

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavafx/scene/control/Hyperlink;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorLink:Ljavafx/scene/control/Hyperlink;

    .line 74
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorDialog:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    .line 77
    move-object v3, v0

    new-instance v4, Ljavafx/scene/layout/GridPane;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/layout/GridPane;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorGrid:Ljavafx/scene/layout/GridPane;

    .line 78
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/Separator;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/control/Separator;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->separator:Ljavafx/scene/control/Separator;

    .line 79
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/Label;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "customColorLabel"

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavafx/scene/control/Label;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorLabel:Ljavafx/scene/control/Label;

    .line 83
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->contextMenu:Ljavafx/scene/control/ContextMenu;

    .line 85
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->mouseDragColor:Ljavafx/scene/paint/Color;

    .line 86
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->dragDetected:Z

    .line 89
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorNumber:I

    .line 90
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorRows:I

    .line 91
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorLastRowLength:I

    .line 93
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;-><init>(Lcom/sun/javafx/scene/control/skin/ColorPalette;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->hoverSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    .line 96
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "color-palette-region"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 97
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->colorPicker:Ljavafx/scene/control/ColorPicker;

    .line 98
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;-><init>(Lcom/sun/javafx/scene/control/skin/ColorPalette;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->colorPickerGrid:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;

    .line 99
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->colorPickerGrid:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->requestFocus()V

    .line 100
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorLabel:Ljavafx/scene/control/Label;

    sget-object v4, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Label;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 101
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorLink:Ljavafx/scene/control/Hyperlink;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ColorPalette;->colorPickerGrid:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->prefWidth(D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Hyperlink;->setPrefWidth(D)V

    .line 102
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorLink:Ljavafx/scene/control/Hyperlink;

    sget-object v4, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Hyperlink;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 103
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorLink:Ljavafx/scene/control/Hyperlink;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Hyperlink;->setFocusTraversable(Z)V

    .line 104
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorLink:Ljavafx/scene/control/Hyperlink;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Hyperlink;->setVisited(Z)V

    .line 105
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorLink:Ljavafx/scene/control/Hyperlink;

    new-instance v4, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;-><init>(Lcom/sun/javafx/scene/control/skin/ColorPalette;Ljavafx/scene/control/ColorPicker;)V

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Hyperlink;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 134
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->initNavigation()V

    .line 135
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorGrid:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/GridPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "color-picker-grid"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 136
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorGrid:Ljavafx/scene/layout/GridPane;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/GridPane;->setVisible(Z)V

    .line 137
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->buildCustomColors()V

    .line 138
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ColorPicker;->getCustomColors()Ljavafx/collections/ObservableList;

    move-result-object v3

    new-instance v4, Lcom/sun/javafx/scene/control/skin/ColorPalette$2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/ColorPalette$2;-><init>(Lcom/sun/javafx/scene/control/skin/ColorPalette;)V

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 144
    new-instance v3, Ljavafx/scene/layout/VBox;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljavafx/scene/layout/VBox;-><init>()V

    move-object v2, v3

    .line 145
    .local v2, "paletteBox":Ljavafx/scene/layout/VBox;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/layout/VBox;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "color-palette"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 146
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/layout/VBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljavafx/scene/Node;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ColorPalette;->colorPickerGrid:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorLabel:Ljavafx/scene/control/Label;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorGrid:Ljavafx/scene/layout/GridPane;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ColorPalette;->separator:Ljavafx/scene/control/Separator;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorLink:Ljavafx/scene/control/Hyperlink;

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    .line 148
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->hoverSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->setMouseTransparent(Z)V

    .line 149
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->hoverSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "hover-square"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    .line 150
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->setFocusedSquare(Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;)V

    .line 152
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/scene/Node;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v2

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ColorPalette;->hoverSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/PopupControl;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPalette;->popupControl:Ljavafx/scene/control/PopupControl;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/ColorPalette;)V
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->buildCustomColors()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sun/javafx/scene/control/skin/ColorPalette;Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;)V
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->setFocusedSquare(Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;)V

    return-void
.end method

.method static synthetic access$1100()[D
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ColorPalette;->RAW_VALUES:[D

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/paint/Color;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPalette;->mouseDragColor:Ljavafx/scene/paint/Color;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    return-object v0
.end method

.method static synthetic access$1202(Lcom/sun/javafx/scene/control/skin/ColorPalette;Ljavafx/scene/paint/Color;)Ljavafx/scene/paint/Color;
    .locals 7

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/paint/Color;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->mouseDragColor:Ljavafx/scene/paint/Color;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ColorPicker;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPalette;->colorPicker:Ljavafx/scene/control/ColorPicker;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/javafx/scene/control/skin/ColorPalette;)I
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorRows:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    return v0
.end method

.method static synthetic access$400(Lcom/sun/javafx/scene/control/skin/ColorPalette;)I
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorLastRowLength:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/sun/javafx/scene/control/skin/ColorPalette;->NUM_OF_ROWS:I

    return v0
.end method

.method static synthetic access$600(Lcom/sun/javafx/scene/control/skin/ColorPalette;)I
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorNumber:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    return v0
.end method

.method static synthetic access$700(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/layout/GridPane;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorGrid:Ljavafx/scene/layout/GridPane;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    return-object v0
.end method

.method static synthetic access$800(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Z
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPalette;->dragDetected:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    return v0
.end method

.method static synthetic access$802(Lcom/sun/javafx/scene/control/skin/ColorPalette;Z)Z
    .locals 7

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette;->dragDetected:Z

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    return v0
.end method

.method static synthetic access$900(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ContextMenu;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPalette;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/ColorPalette;Ljavafx/collections/ObservableList;Ljavafx/event/ActionEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->lambda$buildCustomColors$305(Ljavafx/collections/ObservableList;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/ColorPalette;Ljavafx/collections/ObservableList;Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;Ljavafx/scene/input/KeyEvent;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->lambda$buildCustomColors$306(Ljavafx/collections/ObservableList;Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/ColorPalette;Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->lambda$initNavigation$307(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method private buildCustomColors()V
    .locals 17

    .prologue
    .line 192
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ColorPalette;->colorPicker:Ljavafx/scene/control/ColorPicker;

    invoke-virtual {v9}, Ljavafx/scene/control/ColorPicker;->getCustomColors()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v1, v9

    .line 193
    .local v1, "customColors":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/paint/Color;>;"
    move-object v9, v0

    move-object v10, v1

    invoke-interface {v10}, Ljavafx/collections/ObservableList;->size()I

    move-result v10

    iput v10, v9, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorNumber:I

    .line 195
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorGrid:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v9}, Ljavafx/scene/layout/GridPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->clear()V

    .line 196
    move-object v9, v1

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 197
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorLabel:Ljavafx/scene/control/Label;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljavafx/scene/control/Label;->setVisible(Z)V

    .line 198
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorLabel:Ljavafx/scene/control/Label;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljavafx/scene/control/Label;->setManaged(Z)V

    .line 199
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorGrid:Ljavafx/scene/layout/GridPane;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljavafx/scene/layout/GridPane;->setVisible(Z)V

    .line 200
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorGrid:Ljavafx/scene/layout/GridPane;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljavafx/scene/layout/GridPane;->setManaged(Z)V

    .line 201
    .line 248
    :goto_0
    return-void

    .line 203
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorLabel:Ljavafx/scene/control/Label;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljavafx/scene/control/Label;->setVisible(Z)V

    .line 204
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorLabel:Ljavafx/scene/control/Label;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljavafx/scene/control/Label;->setManaged(Z)V

    .line 205
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorGrid:Ljavafx/scene/layout/GridPane;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljavafx/scene/layout/GridPane;->setVisible(Z)V

    .line 206
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorGrid:Ljavafx/scene/layout/GridPane;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljavafx/scene/layout/GridPane;->setManaged(Z)V

    .line 207
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ColorPalette;->contextMenu:Ljavafx/scene/control/ContextMenu;

    if-nez v9, :cond_1

    .line 208
    new-instance v9, Ljavafx/scene/control/MenuItem;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const-string v11, "removeColor"

    invoke-static {v11}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavafx/scene/control/MenuItem;-><init>(Ljava/lang/String;)V

    move-object v2, v9

    .line 209
    .local v2, "item":Ljavafx/scene/control/MenuItem;
    move-object v9, v2

    move-object v10, v0

    move-object v11, v1

    invoke-static {v10, v11}, Lcom/sun/javafx/scene/control/skin/ColorPalette$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ColorPalette;Ljavafx/collections/ObservableList;)Ljavafx/event/EventHandler;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/scene/control/MenuItem;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 214
    move-object v9, v0

    new-instance v10, Ljavafx/scene/control/ContextMenu;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x1

    new-array v12, v12, [Ljavafx/scene/control/MenuItem;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    move-object v15, v2

    aput-object v15, v13, v14

    invoke-direct {v11, v12}, Ljavafx/scene/control/ContextMenu;-><init>([Ljavafx/scene/control/MenuItem;)V

    iput-object v10, v9, Lcom/sun/javafx/scene/control/skin/ColorPalette;->contextMenu:Ljavafx/scene/control/ContextMenu;

    .line 218
    .end local v2    # "item":Ljavafx/scene/control/MenuItem;
    :cond_1
    const/4 v9, 0x0

    move v2, v9

    .line 219
    .local v2, "customColumnIndex":I
    const/4 v9, 0x0

    move v3, v9

    .line 220
    .local v3, "customRowIndex":I
    move-object v9, v1

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->size()I

    move-result v9

    const/16 v10, 0xc

    rem-int/lit8 v9, v9, 0xc

    move v4, v9

    .line 221
    .local v4, "remainingSquares":I
    move v9, v4

    if-nez v9, :cond_3

    const/4 v9, 0x0

    :goto_1
    move v5, v9

    .line 222
    .local v5, "numEmpty":I
    move-object v9, v0

    move v10, v4

    if-nez v10, :cond_4

    const/16 v10, 0xc

    :goto_2
    iput v10, v9, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorLastRowLength:I

    .line 224
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_3
    move v9, v6

    move-object v10, v1

    invoke-interface {v10}, Ljavafx/collections/ObservableList;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 225
    move-object v9, v1

    move v10, v6

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/paint/Color;

    move-object v7, v9

    .line 226
    .local v7, "c":Ljavafx/scene/paint/Color;
    new-instance v9, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    move-object v12, v7

    move v13, v6

    const/4 v14, 0x1

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;-><init>(Lcom/sun/javafx/scene/control/skin/ColorPalette;Ljavafx/scene/paint/Color;IZ)V

    move-object v8, v9

    .line 227
    .local v8, "square":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    move-object v9, v8

    sget-object v10, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    move-object v11, v0

    move-object v12, v1

    move-object v13, v8

    invoke-static {v11, v12, v13}, Lcom/sun/javafx/scene/control/skin/ColorPalette$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ColorPalette;Ljavafx/collections/ObservableList;Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;)Ljavafx/event/EventHandler;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 233
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorGrid:Ljavafx/scene/layout/GridPane;

    move-object v10, v8

    move v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 234
    add-int/lit8 v2, v2, 0x1

    .line 235
    move v9, v2

    const/16 v10, 0xc

    if-ne v9, v10, :cond_2

    .line 236
    const/4 v9, 0x0

    move v2, v9

    .line 237
    add-int/lit8 v3, v3, 0x1

    .line 224
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 221
    .end local v5    # "numEmpty":I
    .end local v6    # "i":I
    .end local v7    # "c":Ljavafx/scene/paint/Color;
    .end local v8    # "square":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    :cond_3
    const/16 v9, 0xc

    move v10, v4

    rsub-int/lit8 v9, v10, 0xc

    goto :goto_1

    .line 222
    .restart local v5    # "numEmpty":I
    :cond_4
    move v10, v4

    goto :goto_2

    .line 240
    .restart local v6    # "i":I
    :cond_5
    const/4 v9, 0x0

    move v6, v9

    :goto_4
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_6

    .line 241
    new-instance v9, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    invoke-direct {v10, v11}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;-><init>(Lcom/sun/javafx/scene/control/skin/ColorPalette;)V

    move-object v7, v9

    .line 242
    .local v7, "emptySquare":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorGrid:Ljavafx/scene/layout/GridPane;

    move-object v10, v7

    move v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 243
    add-int/lit8 v2, v2, 0x1

    .line 240
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 245
    .end local v7    # "emptySquare":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    :cond_6
    move-object v9, v0

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorRows:I

    .line 246
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->requestLayout()V

    .line 248
    goto/16 :goto_0
.end method

.method private initNavigation()V
    .locals 9

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPalette$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/event/EventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->setOnKeyPressed(Ljavafx/event/EventHandler;)V

    .line 262
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$3;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/skin/ColorPalette$3;-><init>(Lcom/sun/javafx/scene/control/skin/ColorPalette;)V

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;-><init>(Ljavafx/scene/Parent;Lcom/sun/javafx/scene/traversal/Algorithm;)V

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->setImpl_traversalEngine(Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;)V

    .line 364
    return-void
.end method

.method private synthetic lambda$buildCustomColors$305(Ljavafx/collections/ObservableList;Ljavafx/event/ActionEvent;)V
    .locals 6

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, p1

    .local v1, "customColors":Ljavafx/collections/ObservableList;
    move-object v2, p2

    .local v2, "e":Ljavafx/event/ActionEvent;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ColorPalette;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v4}, Ljavafx/scene/control/ContextMenu;->getOwnerNode()Ljavafx/scene/Node;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    move-object v3, v4

    .line 211
    .local v3, "square":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    move-object v4, v1

    move-object v5, v3

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->rectangle:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v5}, Ljavafx/scene/shape/Rectangle;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 212
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->buildCustomColors()V

    .line 213
    return-void
.end method

.method private synthetic lambda$buildCustomColors$306(Ljavafx/collections/ObservableList;Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;Ljavafx/scene/input/KeyEvent;)V
    .locals 6

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, p1

    .local v1, "customColors":Ljavafx/collections/ObservableList;
    move-object v2, p2

    .local v2, "square":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    move-object v3, p3

    .local v3, "e":Ljavafx/scene/input/KeyEvent;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/KeyCode;->DELETE:Ljavafx/scene/input/KeyCode;

    if-ne v4, v5, :cond_0

    .line 229
    move-object v4, v1

    move-object v5, v2

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->rectangle:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v5}, Ljavafx/scene/shape/Rectangle;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 230
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->buildCustomColors()V

    .line 232
    :cond_0
    return-void
.end method

.method private synthetic lambda$initNavigation$307(Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, p1

    .local v1, "ke":Ljavafx/scene/input/KeyEvent;
    sget-object v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$4;->$SwitchMap$javafx$scene$input$KeyCode:[I

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 260
    :goto_0
    return-void

    .line 255
    :pswitch_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->processSelectKey(Ljavafx/scene/input/KeyEvent;)V

    .line 256
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 257
    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processSelectKey(Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, p1

    .local v1, "ke":Ljavafx/scene/input/KeyEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette;->focusedSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette;->focusedSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->selectColor(Ljavafx/scene/input/KeyEvent;)V

    .line 368
    :cond_0
    return-void
.end method

.method private setFocusedSquare(Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;)V
    .locals 19

    .prologue
    .line 156
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object/from16 v2, p1

    .local v2, "square":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    move-object v12, v2

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ColorPalette;->focusedSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    if-ne v12, v13, :cond_0

    .line 157
    .line 189
    :goto_0
    return-void

    .line 159
    :cond_0
    move-object v12, v1

    move-object v13, v2

    iput-object v13, v12, Lcom/sun/javafx/scene/control/skin/ColorPalette;->focusedSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    .line 161
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ColorPalette;->hoverSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ColorPalette;->focusedSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v12, v13}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->setVisible(Z)V

    .line 162
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ColorPalette;->focusedSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    if-nez v12, :cond_2

    .line 163
    goto :goto_0

    .line 161
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 166
    :cond_2
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ColorPalette;->focusedSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->isFocused()Z

    move-result v12

    if-nez v12, :cond_3

    .line 167
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ColorPalette;->focusedSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->requestFocus()V

    .line 170
    :cond_3
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ColorPalette;->hoverSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->rectangle:Ljavafx/scene/shape/Rectangle;

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ColorPalette;->focusedSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->rectangle:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v13}, Ljavafx/scene/shape/Rectangle;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljavafx/scene/shape/Rectangle;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 172
    move-object v12, v2

    move-object v13, v2

    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->localToScene(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v12

    move-object v3, v12

    .line 174
    .local v3, "b":Ljavafx/geometry/Bounds;
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-wide v4, v12

    .line 175
    .local v4, "x":D
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v12

    move-wide v6, v12

    .line 178
    .local v6, "y":D
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ColorPalette;->hoverSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->getScaleX()D

    move-result-wide v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_4

    const-wide/16 v12, 0x0

    :goto_2
    move-wide v10, v12

    .line 180
    .local v10, "scaleAdjust":D
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ColorPalette;->colorPicker:Ljavafx/scene/control/ColorPicker;

    invoke-virtual {v12}, Ljavafx/scene/control/ColorPicker;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v12

    sget-object v13, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v12, v13, :cond_5

    .line 181
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ColorPalette;->focusedSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->getLayoutX()D

    move-result-wide v12

    move-wide v4, v12

    .line 182
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ColorPalette;->focusedSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->getWidth()D

    move-result-wide v12

    neg-double v12, v12

    move-wide v14, v10

    add-double/2addr v12, v14

    move-wide v8, v12

    .line 187
    .local v8, "xAdjust":D
    :goto_3
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ColorPalette;->hoverSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    move-object v13, v1

    move-wide v14, v4

    invoke-virtual {v13, v14, v15}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->snapPosition(D)D

    move-result-wide v13

    move-wide v15, v8

    sub-double/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->setLayoutX(D)V

    .line 188
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ColorPalette;->hoverSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    move-object v13, v1

    move-wide v14, v6

    invoke-virtual {v13, v14, v15}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->snapPosition(D)D

    move-result-wide v13

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/ColorPalette;->focusedSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->getHeight()D

    move-result-wide v15

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    div-double v15, v15, v17

    sub-double/2addr v13, v15

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/ColorPalette;->hoverSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->getScaleY()D

    move-result-wide v15

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpl-double v15, v15, v17

    if-nez v15, :cond_6

    const-wide/16 v15, 0x0

    :goto_4
    add-double/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->setLayoutY(D)V

    .line 189
    goto/16 :goto_0

    .line 178
    .end local v8    # "xAdjust":D
    .end local v10    # "scaleAdjust":D
    :cond_4
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ColorPalette;->hoverSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->getWidth()D

    move-result-wide v12

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    div-double/2addr v12, v14

    goto :goto_2

    .line 184
    .restart local v10    # "scaleAdjust":D
    :cond_5
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ColorPalette;->focusedSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->getWidth()D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    move-wide v14, v10

    add-double/2addr v12, v14

    move-wide v8, v12

    .restart local v8    # "xAdjust":D
    goto :goto_3

    .line 188
    :cond_6
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/ColorPalette;->focusedSquare:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->getHeight()D

    move-result-wide v15

    const-wide/high16 v17, 0x4010000000000000L    # 4.0

    div-double v15, v15, v17

    goto :goto_4
.end method


# virtual methods
.method public getColorGrid()Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;
    .locals 2

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPalette;->colorPickerGrid:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    return-object v0
.end method

.method public isCustomColorDialogShowing()Z
    .locals 2

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorDialog:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorDialog:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->isVisible()Z

    move-result v1

    move v0, v1

    .line 380
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public setPopupControl(Ljavafx/scene/control/PopupControl;)V
    .locals 4

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, p1

    .local v1, "pc":Ljavafx/scene/control/PopupControl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette;->popupControl:Ljavafx/scene/control/PopupControl;

    .line 372
    return-void
.end method

.method public updateSelection(Ljavafx/scene/paint/Color;)V
    .locals 7

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v1, p1

    .local v1, "color":Ljavafx/scene/paint/Color;
    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->setFocusedSquare(Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;)V

    .line 474
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette;->colorPickerGrid:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->getSquares()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    move-object v3, v5

    .line 475
    .local v3, "c":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    move-object v5, v3

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->rectangle:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v5}, Ljavafx/scene/shape/Rectangle;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 476
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->setFocusedSquare(Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;)V

    .line 477
    .line 488
    .end local v3    # "c":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    :goto_1
    return-void

    .line 479
    .restart local v3    # "c":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    :cond_0
    goto :goto_0

    .line 481
    .end local v3    # "c":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorGrid:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v5}, Ljavafx/scene/layout/GridPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_2
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node;

    move-object v3, v5

    .line 482
    .local v3, "n":Ljavafx/scene/Node;
    move-object v5, v3

    check-cast v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    move-object v4, v5

    .line 483
    .local v4, "c":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    move-object v5, v4

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->rectangle:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v5}, Ljavafx/scene/shape/Rectangle;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 484
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->setFocusedSquare(Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;)V

    .line 485
    goto :goto_1

    .line 487
    :cond_2
    goto :goto_2

    .line 488
    .end local v3    # "n":Ljavafx/scene/Node;
    .end local v4    # "c":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    :cond_3
    goto :goto_1
.end method
