.class public Lcom/sun/javafx/scene/control/skin/LabeledText;
.super Ljavafx/scene/text/Text;
.source "LabeledText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;
    }
.end annotation


# static fields
.field private static final FILL:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Lcom/sun/javafx/scene/control/skin/LabeledText;",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private static final FONT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Lcom/sun/javafx/scene/control/skin/LabeledText;",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation
.end field

.field private static final LINE_SPACING:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Lcom/sun/javafx/scene/control/skin/LabeledText;",
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
            "Lcom/sun/javafx/scene/control/skin/LabeledText;",
            "Ljavafx/scene/text/TextAlignment;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNDERLINE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Lcom/sun/javafx/scene/control/skin/LabeledText;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fillMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private fontMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation
.end field

.field private final labeled:Ljavafx/scene/control/Labeled;

.field private lineSpacingMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private textAlignmentMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror",
            "<",
            "Ljavafx/scene/text/TextAlignment;",
            ">;"
        }
    .end annotation
.end field

.field private underlineMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 122
    new-instance v4, Lcom/sun/javafx/scene/control/skin/LabeledText$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "-fx-font"

    .line 123
    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/LabeledText$1;-><init>(Ljava/lang/String;Ljavafx/scene/text/Font;)V

    sput-object v4, Lcom/sun/javafx/scene/control/skin/LabeledText;->FONT:Ljavafx/css/CssMetaData;

    .line 145
    new-instance v4, Lcom/sun/javafx/scene/control/skin/LabeledText$2;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "-fx-fill"

    .line 147
    invoke-static {}, Lcom/sun/javafx/css/converters/PaintConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v7

    sget-object v8, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/LabeledText$2;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/scene/paint/Paint;)V

    sput-object v4, Lcom/sun/javafx/scene/control/skin/LabeledText;->FILL:Ljavafx/css/CssMetaData;

    .line 169
    new-instance v4, Lcom/sun/javafx/scene/control/skin/LabeledText$3;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "-fx-text-alignment"

    new-instance v7, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-class v9, Ljavafx/scene/text/TextAlignment;

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    sget-object v8, Ljavafx/scene/text/TextAlignment;->LEFT:Ljavafx/scene/text/TextAlignment;

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/LabeledText$3;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/scene/text/TextAlignment;)V

    sput-object v4, Lcom/sun/javafx/scene/control/skin/LabeledText;->TEXT_ALIGNMENT:Ljavafx/css/CssMetaData;

    .line 194
    new-instance v4, Lcom/sun/javafx/scene/control/skin/LabeledText$4;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "-fx-underline"

    .line 196
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/LabeledText$4;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v4, Lcom/sun/javafx/scene/control/skin/LabeledText;->UNDERLINE:Ljavafx/css/CssMetaData;

    .line 219
    new-instance v4, Lcom/sun/javafx/scene/control/skin/LabeledText$5;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "-fx-line-spacing"

    .line 221
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v7

    const/4 v8, 0x0

    .line 222
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/LabeledText$5;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v4, Lcom/sun/javafx/scene/control/skin/LabeledText;->LINE_SPACING:Ljavafx/css/CssMetaData;

    .line 238
    new-instance v4, Ljava/util/ArrayList;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 239
    invoke-static {}, Ljavafx/scene/text/Text;->getClassCssMetaData()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    .line 241
    .local v0, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    const/4 v4, 0x0

    move v1, v4

    .local v1, "n":I
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v2, v4

    .local v2, "nMax":I
    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_5

    .line 242
    move-object v4, v0

    move v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/css/CssMetaData;

    invoke-virtual {v4}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 244
    .local v3, "prop":Ljava/lang/String;
    const-string v4, "-fx-fill"

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 245
    move-object v4, v0

    move v5, v1

    sget-object v6, Lcom/sun/javafx/scene/control/skin/LabeledText;->FILL:Ljavafx/css/CssMetaData;

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 241
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    :cond_1
    const-string v4, "-fx-font"

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 247
    move-object v4, v0

    move v5, v1

    sget-object v6, Lcom/sun/javafx/scene/control/skin/LabeledText;->FONT:Ljavafx/css/CssMetaData;

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 248
    :cond_2
    const-string v4, "-fx-text-alignment"

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 249
    move-object v4, v0

    move v5, v1

    sget-object v6, Lcom/sun/javafx/scene/control/skin/LabeledText;->TEXT_ALIGNMENT:Ljavafx/css/CssMetaData;

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 250
    :cond_3
    const-string v4, "-fx-underline"

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 251
    move-object v4, v0

    move v5, v1

    sget-object v6, Lcom/sun/javafx/scene/control/skin/LabeledText;->UNDERLINE:Ljavafx/css/CssMetaData;

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 252
    :cond_4
    const-string v4, "-fx-line-spacing"

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 253
    move-object v4, v0

    move v5, v1

    sget-object v6, Lcom/sun/javafx/scene/control/skin/LabeledText;->LINE_SPACING:Ljavafx/css/CssMetaData;

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 257
    .end local v3    # "prop":Ljava/lang/String;
    :cond_5
    move-object v4, v0

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/sun/javafx/scene/control/skin/LabeledText;->STYLEABLES:Ljava/util/List;

    .line 258
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/Labeled;)V
    .locals 9

    .prologue
    .line 60
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/LabeledText;
    move-object v2, p1

    .local v2, "labeled":Ljavafx/scene/control/Labeled;
    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/text/Text;-><init>()V

    .line 113
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/LabeledText;->fontMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    .line 62
    move-object v3, v2

    if-nez v3, :cond_0

    .line 63
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "labeled cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    :cond_0
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/LabeledText;->labeled:Ljavafx/scene/control/Labeled;

    .line 71
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/LabeledText;->labeled:Ljavafx/scene/control/Labeled;

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->getTextFill()Ljavafx/scene/paint/Paint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/LabeledText;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 72
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/LabeledText;->labeled:Ljavafx/scene/control/Labeled;

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->getFont()Ljavafx/scene/text/Font;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/LabeledText;->setFont(Ljavafx/scene/text/Font;)V

    .line 73
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/LabeledText;->labeled:Ljavafx/scene/control/Labeled;

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->getTextAlignment()Ljavafx/scene/text/TextAlignment;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/LabeledText;->setTextAlignment(Ljavafx/scene/text/TextAlignment;)V

    .line 74
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/LabeledText;->labeled:Ljavafx/scene/control/Labeled;

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->isUnderline()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/LabeledText;->setUnderline(Z)V

    .line 75
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/LabeledText;->labeled:Ljavafx/scene/control/Labeled;

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->getLineSpacing()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledText;->setLineSpacing(D)V

    .line 81
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/LabeledText;->fillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/LabeledText;->labeled:Ljavafx/scene/control/Labeled;

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->textFillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 82
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/LabeledText;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/LabeledText;->labeled:Ljavafx/scene/control/Labeled;

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 84
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/LabeledText;->textAlignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/LabeledText;->labeled:Ljavafx/scene/control/Labeled;

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->textAlignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 85
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/LabeledText;->underlineProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/LabeledText;->labeled:Ljavafx/scene/control/Labeled;

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->underlineProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 86
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/LabeledText;->lineSpacingProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/LabeledText;->labeled:Ljavafx/scene/control/Labeled;

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->lineSpacingProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 88
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "text"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    .line 89
    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/LabeledText;)Ljavafx/scene/control/Labeled;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/LabeledText;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/LabeledText;->labeled:Ljavafx/scene/control/Labeled;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/LabeledText;
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/LabeledText;)Ljavafx/css/StyleableProperty;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/LabeledText;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/LabeledText;->fontMirror()Ljavafx/css/StyleableProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/LabeledText;
    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/javafx/scene/control/skin/LabeledText;)Ljavafx/css/StyleableProperty;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/LabeledText;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/LabeledText;->fillMirror()Ljavafx/css/StyleableProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/LabeledText;
    return-object v0
.end method

.method static synthetic access$400(Lcom/sun/javafx/scene/control/skin/LabeledText;)Ljavafx/css/StyleableProperty;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/LabeledText;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/LabeledText;->textAlignmentMirror()Ljavafx/css/StyleableProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/LabeledText;
    return-object v0
.end method

.method static synthetic access$500(Lcom/sun/javafx/scene/control/skin/LabeledText;)Ljavafx/css/StyleableProperty;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/LabeledText;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/LabeledText;->underlineMirror()Ljavafx/css/StyleableProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/LabeledText;
    return-object v0
.end method

.method static synthetic access$600(Lcom/sun/javafx/scene/control/skin/LabeledText;)Ljavafx/css/StyleableProperty;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/LabeledText;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/LabeledText;->lineSpacingMirror()Ljavafx/css/StyleableProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/LabeledText;
    return-object v0
.end method

.method private fillMirror()Ljavafx/css/StyleableProperty;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledText;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/LabeledText;->fillMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    if-nez v1, :cond_0

    .line 139
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    sget-object v5, Lcom/sun/javafx/scene/control/skin/LabeledText;->FILL:Ljavafx/css/CssMetaData;

    const-string v6, "fillMirror"

    sget-object v7, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/LabeledText;->labeled:Ljavafx/scene/control/Labeled;

    invoke-virtual {v8}, Ljavafx/scene/control/Labeled;->textFillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v8

    check-cast v8, Ljavafx/css/StyleableProperty;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;-><init>(Lcom/sun/javafx/scene/control/skin/LabeledText;Ljavafx/css/CssMetaData;Ljava/lang/String;Ljava/lang/Object;Ljavafx/css/StyleableProperty;Lcom/sun/javafx/scene/control/skin/LabeledText$1;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/LabeledText;->fillMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    .line 140
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/LabeledText;->fillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/LabeledText;->fillMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 142
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/LabeledText;->fillMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledText;
    return-object v0
.end method

.method private fontMirror()Ljavafx/css/StyleableProperty;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledText;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/LabeledText;->fontMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    if-nez v1, :cond_0

    .line 116
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    sget-object v5, Lcom/sun/javafx/scene/control/skin/LabeledText;->FONT:Ljavafx/css/CssMetaData;

    const-string v6, "fontMirror"

    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/LabeledText;->labeled:Ljavafx/scene/control/Labeled;

    invoke-virtual {v8}, Ljavafx/scene/control/Labeled;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v8

    check-cast v8, Ljavafx/css/StyleableProperty;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;-><init>(Lcom/sun/javafx/scene/control/skin/LabeledText;Ljavafx/css/CssMetaData;Ljava/lang/String;Ljava/lang/Object;Ljavafx/css/StyleableProperty;Lcom/sun/javafx/scene/control/skin/LabeledText$1;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/LabeledText;->fontMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    .line 117
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/LabeledText;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/LabeledText;->fontMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 119
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/LabeledText;->fontMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledText;
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
    .line 96
    sget-object v0, Lcom/sun/javafx/scene/control/skin/LabeledText;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method

.method private lineSpacingMirror()Ljavafx/css/StyleableProperty;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/LabeledText;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/LabeledText;->lineSpacingMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    if-nez v2, :cond_0

    .line 213
    move-object v2, v1

    new-instance v3, Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v1

    sget-object v6, Lcom/sun/javafx/scene/control/skin/LabeledText;->LINE_SPACING:Ljavafx/css/CssMetaData;

    const-string v7, "lineSpacingMirror"

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/LabeledText;->labeled:Ljavafx/scene/control/Labeled;

    invoke-virtual {v9}, Ljavafx/scene/control/Labeled;->lineSpacingProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v9

    check-cast v9, Ljavafx/css/StyleableProperty;

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;-><init>(Lcom/sun/javafx/scene/control/skin/LabeledText;Ljavafx/css/CssMetaData;Ljava/lang/String;Ljava/lang/Object;Ljavafx/css/StyleableProperty;Lcom/sun/javafx/scene/control/skin/LabeledText$1;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/LabeledText;->lineSpacingMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    .line 214
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/LabeledText;->lineSpacingProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/LabeledText;->lineSpacingMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 216
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/LabeledText;->lineSpacingMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/LabeledText;
    return-object v1
.end method

.method private textAlignmentMirror()Ljavafx/css/StyleableProperty;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/text/TextAlignment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledText;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/LabeledText;->textAlignmentMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    if-nez v1, :cond_0

    .line 163
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    sget-object v5, Lcom/sun/javafx/scene/control/skin/LabeledText;->TEXT_ALIGNMENT:Ljavafx/css/CssMetaData;

    const-string v6, "textAlignmentMirror"

    sget-object v7, Ljavafx/scene/text/TextAlignment;->LEFT:Ljavafx/scene/text/TextAlignment;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/LabeledText;->labeled:Ljavafx/scene/control/Labeled;

    invoke-virtual {v8}, Ljavafx/scene/control/Labeled;->textAlignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v8

    check-cast v8, Ljavafx/css/StyleableProperty;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;-><init>(Lcom/sun/javafx/scene/control/skin/LabeledText;Ljavafx/css/CssMetaData;Ljava/lang/String;Ljava/lang/Object;Ljavafx/css/StyleableProperty;Lcom/sun/javafx/scene/control/skin/LabeledText$1;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/LabeledText;->textAlignmentMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    .line 164
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/LabeledText;->textAlignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/LabeledText;->textAlignmentMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 166
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/LabeledText;->textAlignmentMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledText;
    return-object v0
.end method

.method private underlineMirror()Ljavafx/css/StyleableProperty;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledText;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/LabeledText;->underlineMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    if-nez v1, :cond_0

    .line 188
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    sget-object v5, Lcom/sun/javafx/scene/control/skin/LabeledText;->UNDERLINE:Ljavafx/css/CssMetaData;

    const-string v6, "underLineMirror"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/LabeledText;->labeled:Ljavafx/scene/control/Labeled;

    invoke-virtual {v8}, Ljavafx/scene/control/Labeled;->underlineProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v8

    check-cast v8, Ljavafx/css/StyleableProperty;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;-><init>(Lcom/sun/javafx/scene/control/skin/LabeledText;Ljavafx/css/CssMetaData;Ljava/lang/String;Ljava/lang/Object;Ljavafx/css/StyleableProperty;Lcom/sun/javafx/scene/control/skin/LabeledText$1;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/LabeledText;->underlineMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    .line 189
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/LabeledText;->underlineProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/LabeledText;->underlineMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 191
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/LabeledText;->underlineMirror:Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledText;
    return-object v0
.end method


# virtual methods
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
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledText;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledText;
    return-object v0
.end method
