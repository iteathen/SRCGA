.class public Ljavafx/scene/control/Tooltip;
.super Ljavafx/scene/control/PopupControl;
.source "Tooltip.java"


# annotations
.annotation runtime Lcom/sun/javafx/beans/IDProperty;
    value = "id"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/Tooltip$TooltipBehavior;,
        Ljavafx/scene/control/Tooltip$CSSBridge;
    }
.end annotation


# static fields
.field private static BEHAVIOR:Ljavafx/scene/control/Tooltip$TooltipBehavior;

.field private static final CONTENT_DISPLAY:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Tooltip$CSSBridge;",
            "Ljavafx/scene/control/ContentDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private static final FONT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Tooltip$CSSBridge;",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation
.end field

.field private static final GRAPHIC:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Tooltip$CSSBridge;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GRAPHIC_TEXT_GAP:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Tooltip$CSSBridge;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final STYLEABLES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final TEXT_ALIGNMENT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Tooltip$CSSBridge;",
            "Ljavafx/scene/text/TextAlignment;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXT_OVERRUN:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Tooltip$CSSBridge;",
            "Ljavafx/scene/control/OverrunStyle;",
            ">;"
        }
    .end annotation
.end field

.field private static TOOLTIP_PROP_KEY:Ljava/lang/String;

.field private static TOOLTIP_XOFFSET:I

.field private static TOOLTIP_YOFFSET:I

.field private static final WRAP_TEXT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Tooltip$CSSBridge;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activated:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

.field private final contentDisplay:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/ContentDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private final font:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation
.end field

.field private final graphic:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final graphicTextGap:Ljavafx/beans/property/DoubleProperty;

.field private imageUrl:Ljavafx/css/StyleableStringProperty;

.field private final text:Ljavafx/beans/property/StringProperty;

.field private final textAlignment:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/TextAlignment;",
            ">;"
        }
    .end annotation
.end field

.field private final textOverrun:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/OverrunStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final wrapText:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 113
    const-string v2, "javafx.scene.control.Tooltip"

    sput-object v2, Ljavafx/scene/control/Tooltip;->TOOLTIP_PROP_KEY:Ljava/lang/String;

    .line 121
    const/16 v2, 0xa

    sput v2, Ljavafx/scene/control/Tooltip;->TOOLTIP_XOFFSET:I

    .line 122
    const/4 v2, 0x7

    sput v2, Ljavafx/scene/control/Tooltip;->TOOLTIP_YOFFSET:I

    .line 124
    new-instance v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    new-instance v4, Ljavafx/util/Duration;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-wide v6, 0x408f400000000000L    # 1000.0

    invoke-direct {v5, v6, v7}, Ljavafx/util/Duration;-><init>(D)V

    new-instance v5, Ljavafx/util/Duration;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-wide v7, 0x40b3880000000000L    # 5000.0

    invoke-direct {v6, v7, v8}, Ljavafx/util/Duration;-><init>(D)V

    new-instance v6, Ljavafx/util/Duration;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    invoke-direct {v7, v8, v9}, Ljavafx/util/Duration;-><init>(D)V

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/control/Tooltip$TooltipBehavior;-><init>(Ljavafx/util/Duration;Ljavafx/util/Duration;Ljavafx/util/Duration;Z)V

    sput-object v2, Ljavafx/scene/control/Tooltip;->BEHAVIOR:Ljavafx/scene/control/Tooltip$TooltipBehavior;

    .line 509
    new-instance v2, Ljavafx/scene/control/Tooltip$5;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const-string v4, "-fx-font"

    .line 510
    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Tooltip$5;-><init>(Ljava/lang/String;Ljavafx/scene/text/Font;)V

    sput-object v2, Ljavafx/scene/control/Tooltip;->FONT:Ljavafx/css/CssMetaData;

    .line 523
    new-instance v2, Ljavafx/scene/control/Tooltip$6;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const-string v4, "-fx-text-alignment"

    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-class v7, Ljavafx/scene/text/TextAlignment;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    sget-object v6, Ljavafx/scene/text/TextAlignment;->LEFT:Ljavafx/scene/text/TextAlignment;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/Tooltip$6;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/scene/text/TextAlignment;)V

    sput-object v2, Ljavafx/scene/control/Tooltip;->TEXT_ALIGNMENT:Ljavafx/css/CssMetaData;

    .line 539
    new-instance v2, Ljavafx/scene/control/Tooltip$7;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const-string v4, "-fx-text-overrun"

    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-class v7, Ljavafx/scene/control/OverrunStyle;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    sget-object v6, Ljavafx/scene/control/OverrunStyle;->ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/Tooltip$7;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/scene/control/OverrunStyle;)V

    sput-object v2, Ljavafx/scene/control/Tooltip;->TEXT_OVERRUN:Ljavafx/css/CssMetaData;

    .line 555
    new-instance v2, Ljavafx/scene/control/Tooltip$8;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const-string v4, "-fx-wrap-text"

    .line 557
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/Tooltip$8;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v2, Ljavafx/scene/control/Tooltip;->WRAP_TEXT:Ljavafx/css/CssMetaData;

    .line 570
    new-instance v2, Ljavafx/scene/control/Tooltip$9;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const-string v4, "-fx-graphic"

    .line 572
    invoke-static {}, Lcom/sun/javafx/css/converters/StringConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Tooltip$9;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;)V

    sput-object v2, Ljavafx/scene/control/Tooltip;->GRAPHIC:Ljavafx/css/CssMetaData;

    .line 585
    new-instance v2, Ljavafx/scene/control/Tooltip$10;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const-string v4, "-fx-content-display"

    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-class v7, Ljavafx/scene/control/ContentDisplay;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    sget-object v6, Ljavafx/scene/control/ContentDisplay;->LEFT:Ljavafx/scene/control/ContentDisplay;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/Tooltip$10;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/scene/control/ContentDisplay;)V

    sput-object v2, Ljavafx/scene/control/Tooltip;->CONTENT_DISPLAY:Ljavafx/css/CssMetaData;

    .line 601
    new-instance v2, Ljavafx/scene/control/Tooltip$11;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const-string v4, "-fx-graphic-text-gap"

    .line 603
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/Tooltip$11;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/control/Tooltip;->GRAPHIC_TEXT_GAP:Ljavafx/css/CssMetaData;

    .line 618
    new-instance v2, Ljava/util/ArrayList;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    .line 619
    invoke-static {}, Ljavafx/scene/control/PopupControl;->getClassCssMetaData()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    .line 620
    .local v1, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v2, v1

    sget-object v3, Ljavafx/scene/control/Tooltip;->FONT:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 621
    move-object v2, v1

    sget-object v3, Ljavafx/scene/control/Tooltip;->TEXT_ALIGNMENT:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 622
    move-object v2, v1

    sget-object v3, Ljavafx/scene/control/Tooltip;->TEXT_OVERRUN:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 623
    move-object v2, v1

    sget-object v3, Ljavafx/scene/control/Tooltip;->WRAP_TEXT:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 624
    move-object v2, v1

    sget-object v3, Ljavafx/scene/control/Tooltip;->GRAPHIC:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 625
    move-object v2, v1

    sget-object v3, Ljavafx/scene/control/Tooltip;->CONTENT_DISPLAY:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 626
    move-object v2, v1

    sget-object v3, Ljavafx/scene/control/Tooltip;->GRAPHIC_TEXT_GAP:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 627
    move-object v2, v1

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Ljavafx/scene/control/Tooltip;->STYLEABLES:Ljava/util/List;

    .line 628
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/control/Tooltip;-><init>(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/PopupControl;-><init>()V

    .line 187
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/Tooltip$1;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    move-object v6, v0

    const-string v7, "text"

    const-string v8, ""

    invoke-direct {v4, v5, v6, v7, v8}, Ljavafx/scene/control/Tooltip$1;-><init>(Ljavafx/scene/control/Tooltip;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/Tooltip;->text:Ljavafx/beans/property/StringProperty;

    .line 215
    move-object v2, v0

    new-instance v3, Ljavafx/css/SimpleStyleableObjectProperty;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    sget-object v5, Ljavafx/scene/control/Tooltip;->TEXT_ALIGNMENT:Ljavafx/css/CssMetaData;

    move-object v6, v0

    const-string v7, "textAlignment"

    sget-object v8, Ljavafx/scene/text/TextAlignment;->LEFT:Ljavafx/scene/text/TextAlignment;

    invoke-direct {v4, v5, v6, v7, v8}, Ljavafx/css/SimpleStyleableObjectProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/scene/control/Tooltip;->textAlignment:Ljavafx/beans/property/ObjectProperty;

    .line 231
    move-object v2, v0

    new-instance v3, Ljavafx/css/SimpleStyleableObjectProperty;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    sget-object v5, Ljavafx/scene/control/Tooltip;->TEXT_OVERRUN:Ljavafx/css/CssMetaData;

    move-object v6, v0

    const-string v7, "textOverrun"

    sget-object v8, Ljavafx/scene/control/OverrunStyle;->ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    invoke-direct {v4, v5, v6, v7, v8}, Ljavafx/css/SimpleStyleableObjectProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/scene/control/Tooltip;->textOverrun:Ljavafx/beans/property/ObjectProperty;

    .line 247
    move-object v2, v0

    new-instance v3, Ljavafx/css/SimpleStyleableBooleanProperty;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    sget-object v5, Ljavafx/scene/control/Tooltip;->WRAP_TEXT:Ljavafx/css/CssMetaData;

    move-object v6, v0

    const-string v7, "wrapText"

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Ljavafx/css/SimpleStyleableBooleanProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v3, v2, Ljavafx/scene/control/Tooltip;->wrapText:Ljavafx/beans/property/BooleanProperty;

    .line 266
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/Tooltip$2;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/Tooltip$2;-><init>(Ljavafx/scene/control/Tooltip;Ljavafx/scene/text/Font;)V

    iput-object v3, v2, Ljavafx/scene/control/Tooltip;->font:Ljavafx/beans/property/ObjectProperty;

    .line 330
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/Tooltip$3;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/Tooltip$3;-><init>(Ljavafx/scene/control/Tooltip;)V

    iput-object v3, v2, Ljavafx/scene/control/Tooltip;->graphic:Ljavafx/beans/property/ObjectProperty;

    .line 444
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/Tooltip;->imageUrl:Ljavafx/css/StyleableStringProperty;

    .line 458
    move-object v2, v0

    new-instance v3, Ljavafx/css/SimpleStyleableObjectProperty;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    sget-object v5, Ljavafx/scene/control/Tooltip;->CONTENT_DISPLAY:Ljavafx/css/CssMetaData;

    move-object v6, v0

    const-string v7, "contentDisplay"

    sget-object v8, Ljavafx/scene/control/ContentDisplay;->LEFT:Ljavafx/scene/control/ContentDisplay;

    invoke-direct {v4, v5, v6, v7, v8}, Ljavafx/css/SimpleStyleableObjectProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/scene/control/Tooltip;->contentDisplay:Ljavafx/beans/property/ObjectProperty;

    .line 473
    move-object v2, v0

    new-instance v3, Ljavafx/css/SimpleStyleableDoubleProperty;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    sget-object v5, Ljavafx/scene/control/Tooltip;->GRAPHIC_TEXT_GAP:Ljavafx/css/CssMetaData;

    move-object v6, v0

    const-string v7, "graphicTextGap"

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    .line 474
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Ljavafx/css/SimpleStyleableDoubleProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Double;)V

    iput-object v3, v2, Ljavafx/scene/control/Tooltip;->graphicTextGap:Ljavafx/beans/property/DoubleProperty;

    .line 482
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    const-string v6, "activated"

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/Tooltip;->activated:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 167
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Tooltip;->setText(Ljava/lang/String;)V

    .line 168
    :cond_0
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/Tooltip$CSSBridge;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/Tooltip$CSSBridge;-><init>(Ljavafx/scene/control/Tooltip;)V

    iput-object v3, v2, Ljavafx/scene/control/Tooltip;->bridge:Ljavafx/scene/control/PopupControl$CSSBridge;

    .line 169
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tooltip;->getContent()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/scene/Node;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/Tooltip;->bridge:Ljavafx/scene/control/PopupControl$CSSBridge;

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 170
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tooltip;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x0

    const-string v6, "tooltip"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 171
    return-void
.end method

.method static synthetic access$1000(Ljavafx/scene/control/Tooltip;)Ljavafx/css/StyleableStringProperty;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Tooltip;->imageUrlProperty()Ljavafx/css/StyleableStringProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Tooltip;
    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Ljavafx/scene/control/Tooltip;->TOOLTIP_PROP_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 112
    sget v0, Ljavafx/scene/control/Tooltip;->TOOLTIP_XOFFSET:I

    return v0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 112
    sget v0, Ljavafx/scene/control/Tooltip;->TOOLTIP_YOFFSET:I

    return v0
.end method

.method static synthetic access$200()Ljavafx/scene/control/Tooltip$TooltipBehavior;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Ljavafx/scene/control/Tooltip;->BEHAVIOR:Ljavafx/scene/control/Tooltip$TooltipBehavior;

    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/control/Tooltip;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tooltip;->font:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Tooltip;
    return-object v0
.end method

.method static synthetic access$600()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Ljavafx/scene/control/Tooltip;->FONT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$700()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Ljavafx/scene/control/Tooltip;->GRAPHIC:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$800(Ljavafx/scene/control/Tooltip;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tooltip;->graphic:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Tooltip;
    return-object v0
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
    .line 636
    sget-object v0, Ljavafx/scene/control/Tooltip;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method

.method private imageUrlProperty()Ljavafx/css/StyleableStringProperty;
    .locals 6

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tooltip;->imageUrl:Ljavafx/css/StyleableStringProperty;

    if-nez v1, :cond_0

    .line 349
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Tooltip$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/Tooltip$4;-><init>(Ljavafx/scene/control/Tooltip;)V

    iput-object v2, v1, Ljavafx/scene/control/Tooltip;->imageUrl:Ljavafx/css/StyleableStringProperty;

    .line 441
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tooltip;->imageUrl:Ljavafx/css/StyleableStringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
    return-object v0
.end method

.method public static install(Ljavafx/scene/Node;Ljavafx/scene/control/Tooltip;)V
    .locals 5

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "t":Ljavafx/scene/control/Tooltip;
    sget-object v2, Ljavafx/scene/control/Tooltip;->BEHAVIOR:Ljavafx/scene/control/Tooltip$TooltipBehavior;

    move-object v3, v0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/control/Tooltip$TooltipBehavior;->access$000(Ljavafx/scene/control/Tooltip$TooltipBehavior;Ljavafx/scene/Node;Ljavafx/scene/control/Tooltip;)V

    .line 135
    return-void
.end method

.method public static uninstall(Ljavafx/scene/Node;Ljavafx/scene/control/Tooltip;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "t":Ljavafx/scene/control/Tooltip;
    sget-object v2, Ljavafx/scene/control/Tooltip;->BEHAVIOR:Ljavafx/scene/control/Tooltip$TooltipBehavior;

    move-object v3, v0

    invoke-static {v2, v3}, Ljavafx/scene/control/Tooltip$TooltipBehavior;->access$100(Ljavafx/scene/control/Tooltip$TooltipBehavior;Ljavafx/scene/Node;)V

    .line 145
    return-void
.end method


# virtual methods
.method public final activatedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tooltip;->activated:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
    return-object v0
.end method

.method public final contentDisplayProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/ContentDisplay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tooltip;->contentDisplay:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
    return-object v0
.end method

.method protected createDefaultSkin()Ljavafx/scene/control/Skin;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/Skin",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/TooltipSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TooltipSkin;-><init>(Ljavafx/scene/control/Tooltip;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
    return-object v0
.end method

.method public final fontProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tooltip;->font:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
    return-object v0
.end method

.method public final getContentDisplay()Ljavafx/scene/control/ContentDisplay;
    .locals 2

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Tooltip;->contentDisplayProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ContentDisplay;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
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
    .line 645
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    invoke-static {}, Ljavafx/scene/control/Tooltip;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
    return-object v0
.end method

.method public final getFont()Ljavafx/scene/text/Font;
    .locals 2

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Tooltip;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/text/Font;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
    return-object v0
.end method

.method public final getGraphic()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Tooltip;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
    return-object v0
.end method

.method public final getGraphicTextGap()D
    .locals 3

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Tooltip;->graphicTextGapProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
    return-wide v0
.end method

.method public getStyleableParent()Ljavafx/css/Styleable;
    .locals 2

    .prologue
    .line 649
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    sget-object v1, Ljavafx/scene/control/Tooltip;->BEHAVIOR:Ljavafx/scene/control/Tooltip$TooltipBehavior;

    invoke-static {v1}, Ljavafx/scene/control/Tooltip$TooltipBehavior;->access$1100(Ljavafx/scene/control/Tooltip$TooltipBehavior;)Ljavafx/scene/Node;

    move-result-object v1

    if-nez v1, :cond_0

    .line 650
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/PopupControl;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v1

    move-object v0, v1

    .line 652
    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Tooltip;
    :cond_0
    sget-object v1, Ljavafx/scene/control/Tooltip;->BEHAVIOR:Ljavafx/scene/control/Tooltip$TooltipBehavior;

    invoke-static {v1}, Ljavafx/scene/control/Tooltip$TooltipBehavior;->access$1100(Ljavafx/scene/control/Tooltip$TooltipBehavior;)Ljavafx/scene/Node;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public final getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tooltip;->text:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Tooltip;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tooltip;->text:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final getTextAlignment()Ljavafx/scene/text/TextAlignment;
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Tooltip;->textAlignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/text/TextAlignment;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
    return-object v0
.end method

.method public final getTextOverrun()Ljavafx/scene/control/OverrunStyle;
    .locals 2

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Tooltip;->textOverrunProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/OverrunStyle;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
    return-object v0
.end method

.method public final graphicProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tooltip;->graphic:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
    return-object v0
.end method

.method public final graphicTextGapProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tooltip;->graphicTextGap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
    return-object v0
.end method

.method public final isActivated()Z
    .locals 2

    .prologue
    .line 484
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tooltip;->activated:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
    return v0
.end method

.method public final isWrapText()Z
    .locals 2

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Tooltip;->wrapTextProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
    return v0
.end method

.method final setActivated(Z)V
    .locals 4

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Tooltip;->activated:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    return-void
.end method

.method public final setContentDisplay(Ljavafx/scene/control/ContentDisplay;)V
    .locals 4

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/ContentDisplay;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tooltip;->contentDisplayProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    .line 454
    return-void
.end method

.method public final setFont(Ljavafx/scene/text/Font;)V
    .locals 4

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/text/Font;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tooltip;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method public final setGraphic(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tooltip;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    .line 326
    return-void
.end method

.method public final setGraphicTextGap(D)V
    .locals 7

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Tooltip;->graphicTextGapProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    .line 469
    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tooltip;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->setValue(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public final setTextAlignment(Ljavafx/scene/text/TextAlignment;)V
    .locals 4

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/text/TextAlignment;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tooltip;->textAlignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method public final setTextOverrun(Ljavafx/scene/control/OverrunStyle;)V
    .locals 4

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/OverrunStyle;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tooltip;->textOverrunProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    .line 227
    return-void
.end method

.method public final setWrapText(Z)V
    .locals 4

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tooltip;->wrapTextProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    .line 243
    return-void
.end method

.method public final textAlignmentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/TextAlignment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tooltip;->textAlignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
    return-object v0
.end method

.method public final textOverrunProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/OverrunStyle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tooltip;->textOverrun:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
    return-object v0
.end method

.method public final textProperty()Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tooltip;->text:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
    return-object v0
.end method

.method public final wrapTextProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tooltip;->wrapText:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip;
    return-object v0
.end method
