.class public abstract Ljavafx/scene/control/Labeled;
.super Ljavafx/scene/control/Control;
.source "Labeled.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/Labeled$StyleableProperties;
    }
.end annotation

.annotation runtime Ljavafx/beans/DefaultProperty;
    value = "text"
.end annotation


# static fields
.field private static final DEFAULT_ELLIPSIS_STRING:Ljava/lang/String; = "..."


# instance fields
.field private alignment:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private contentDisplay:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/ContentDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private ellipsisString:Ljavafx/beans/property/StringProperty;

.field private font:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation
.end field

.field private graphic:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private graphicTextGap:Ljavafx/beans/property/DoubleProperty;

.field private imageUrl:Ljavafx/css/StyleableStringProperty;

.field private labelPadding:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation
.end field

.field private lineSpacing:Ljavafx/beans/property/DoubleProperty;

.field private mnemonicParsing:Ljavafx/beans/property/BooleanProperty;

.field private text:Ljavafx/beans/property/StringProperty;

.field private textAlignment:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/TextAlignment;",
            ">;"
        }
    .end annotation
.end field

.field private textFill:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private textOverrun:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/OverrunStyle;",
            ">;"
        }
    .end annotation
.end field

.field private underline:Ljavafx/beans/property/BooleanProperty;

.field private wrapText:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Control;-><init>()V

    .line 427
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/control/Labeled;->imageUrl:Ljavafx/css/StyleableStringProperty;

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Control;-><init>()V

    .line 427
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/Labeled;->imageUrl:Ljavafx/css/StyleableStringProperty;

    .line 117
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Labeled;->setText(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavafx/scene/Node;)V
    .locals 6

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "graphic":Ljavafx/scene/Node;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/Control;-><init>()V

    .line 427
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/control/Labeled;->imageUrl:Ljavafx/css/StyleableStringProperty;

    .line 126
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Labeled;->setText(Ljava/lang/String;)V

    .line 127
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Labeled;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    check-cast v3, Ljavafx/css/StyleableProperty;

    const/4 v4, 0x0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method static synthetic access$1400(Ljavafx/scene/control/Labeled;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->font:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method static synthetic access$1500(Ljavafx/scene/control/Labeled;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->alignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method static synthetic access$1600(Ljavafx/scene/control/Labeled;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->textAlignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method static synthetic access$1700(Ljavafx/scene/control/Labeled;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->textFill:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method static synthetic access$1800(Ljavafx/scene/control/Labeled;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->textOverrun:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method static synthetic access$1900(Ljavafx/scene/control/Labeled;)Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->ellipsisString:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method static synthetic access$2000(Ljavafx/scene/control/Labeled;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->wrapText:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method static synthetic access$2100(Ljavafx/scene/control/Labeled;)Ljavafx/css/StyleableStringProperty;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Labeled;->imageUrlProperty()Ljavafx/css/StyleableStringProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method static synthetic access$2200(Ljavafx/scene/control/Labeled;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->underline:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method static synthetic access$2300(Ljavafx/scene/control/Labeled;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->lineSpacing:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method static synthetic access$2400(Ljavafx/scene/control/Labeled;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->contentDisplay:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method static synthetic access$2500(Ljavafx/scene/control/Labeled;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->labelPadding:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method static synthetic access$2600(Ljavafx/scene/control/Labeled;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Labeled;->labelPaddingPropertyImpl()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method static synthetic access$2700(Ljavafx/scene/control/Labeled;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->graphicTextGap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method static synthetic access$700(Ljavafx/scene/control/Labeled;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->graphic:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Labeled;
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
    .line 1049
    # getter for: Ljavafx/scene/control/Labeled$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/control/Labeled$StyleableProperties;->access$2800()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private imageUrlProperty()Ljavafx/css/StyleableStringProperty;
    .locals 6

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->imageUrl:Ljavafx/css/StyleableStringProperty;

    if-nez v1, :cond_0

    .line 435
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Labeled$8;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/Labeled$8;-><init>(Ljavafx/scene/control/Labeled;)V

    iput-object v2, v1, Ljavafx/scene/control/Labeled;->imageUrl:Ljavafx/css/StyleableStringProperty;

    .line 548
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->imageUrl:Ljavafx/css/StyleableStringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method private labelPaddingPropertyImpl()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->labelPadding:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 651
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Labeled$12;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Labeled$12;-><init>(Ljavafx/scene/control/Labeled;Ljavafx/geometry/Insets;)V

    iput-object v2, v1, Ljavafx/scene/control/Labeled;->labelPadding:Ljavafx/beans/property/ObjectProperty;

    .line 681
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->labelPadding:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method private setLabelPadding(Ljavafx/geometry/Insets;)V
    .locals 4

    .prologue
    .line 684
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Insets;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Labeled;->labelPaddingPropertyImpl()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final alignmentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->alignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 154
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Labeled$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Labeled$1;-><init>(Ljavafx/scene/control/Labeled;Ljavafx/geometry/Pos;)V

    iput-object v2, v1, Ljavafx/scene/control/Labeled;->alignment:Ljavafx/beans/property/ObjectProperty;

    .line 171
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->alignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method public final contentDisplayProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
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
    .line 614
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->contentDisplay:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 615
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Labeled$11;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/control/ContentDisplay;->LEFT:Ljavafx/scene/control/ContentDisplay;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Labeled$11;-><init>(Ljavafx/scene/control/Labeled;Ljavafx/scene/control/ContentDisplay;)V

    iput-object v2, v1, Ljavafx/scene/control/Labeled;->contentDisplay:Ljavafx/beans/property/ObjectProperty;

    .line 633
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->contentDisplay:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method public final ellipsisStringProperty()Ljavafx/beans/property/StringProperty;
    .locals 7

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->ellipsisString:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 257
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Labeled$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "..."

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Labeled$4;-><init>(Ljavafx/scene/control/Labeled;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Labeled;->ellipsisString:Ljavafx/beans/property/StringProperty;

    .line 271
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->ellipsisString:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method public final fontProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
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
    .line 324
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->font:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 325
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Labeled$6;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Labeled$6;-><init>(Ljavafx/scene/control/Labeled;Ljavafx/scene/text/Font;)V

    iput-object v2, v1, Ljavafx/scene/control/Labeled;->font:Ljavafx/beans/property/ObjectProperty;

    .line 383
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->font:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method public final getAlignment()Ljavafx/geometry/Pos;
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->alignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Labeled;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->alignment:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Pos;

    goto :goto_0
.end method

.method public getContentBias()Ljavafx/geometry/Orientation;
    .locals 2

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Labeled;->isWrapText()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Labeled;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getContentDisplay()Ljavafx/scene/control/ContentDisplay;
    .locals 2

    .prologue
    .line 637
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->contentDisplay:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/control/ContentDisplay;->LEFT:Ljavafx/scene/control/ContentDisplay;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Labeled;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->contentDisplay:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ContentDisplay;

    goto :goto_0
.end method

.method public getControlCssMetaData()Ljava/util/List;
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
    .line 1058
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    invoke-static {}, Ljavafx/scene/control/Labeled;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method public final getEllipsisString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->ellipsisString:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    const-string v1, "..."

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Labeled;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->ellipsisString:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getFont()Ljavafx/scene/text/Font;
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->font:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Labeled;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->font:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/text/Font;

    goto :goto_0
.end method

.method public final getGraphic()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->graphic:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Labeled;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->graphic:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public final getGraphicTextGap()D
    .locals 4

    .prologue
    .line 714
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Labeled;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Labeled;->graphicTextGap:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/Labeled;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/Labeled;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Labeled;->graphicTextGap:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getLabelPadding()Ljavafx/geometry/Insets;
    .locals 2

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->labelPadding:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Labeled;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->labelPadding:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Insets;

    goto :goto_0
.end method

.method public final getLineSpacing()D
    .locals 4

    .prologue
    .line 608
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Labeled;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Labeled;->lineSpacing:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/Labeled;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/Labeled;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Labeled;->lineSpacing:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->text:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Labeled;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->text:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final getTextAlignment()Ljavafx/scene/text/TextAlignment;
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->textAlignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/text/TextAlignment;->LEFT:Ljavafx/scene/text/TextAlignment;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Labeled;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->textAlignment:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/text/TextAlignment;

    goto :goto_0
.end method

.method public final getTextFill()Ljavafx/scene/paint/Paint;
    .locals 2

    .prologue
    .line 727
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->textFill:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Labeled;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->textFill:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Paint;

    goto :goto_0
.end method

.method public final getTextOverrun()Ljavafx/scene/control/OverrunStyle;
    .locals 2

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->textOverrun:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/control/OverrunStyle;->ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Labeled;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->textOverrun:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/OverrunStyle;

    goto :goto_0
.end method

.method public final graphicProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
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
    .line 398
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->graphic:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 399
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Labeled$7;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/Labeled$7;-><init>(Ljavafx/scene/control/Labeled;)V

    iput-object v2, v1, Ljavafx/scene/control/Labeled;->graphic:Ljavafx/beans/property/ObjectProperty;

    .line 419
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->graphic:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method public final graphicTextGapProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 691
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Labeled;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Labeled;->graphicTextGap:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 692
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/Labeled$13;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/Labeled$13;-><init>(Ljavafx/scene/control/Labeled;D)V

    iput-object v3, v2, Ljavafx/scene/control/Labeled;->graphicTextGap:Ljavafx/beans/property/DoubleProperty;

    .line 710
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Labeled;->graphicTextGap:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/Labeled;
    return-object v1
.end method

.method protected impl_cssGetAlignmentInitialValue()Ljavafx/geometry/Pos;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 812
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    sget-object v1, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method public final isMnemonicParsing()Z
    .locals 2

    .prologue
    .line 772
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->mnemonicParsing:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Labeled;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->mnemonicParsing:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isUnderline()Z
    .locals 2

    .prologue
    .line 578
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->underline:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Labeled;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->underline:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public final isWrapText()Z
    .locals 2

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->wrapText:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Labeled;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->wrapText:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public final labelPaddingProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Labeled;->labelPaddingPropertyImpl()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method public final lineSpacingProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 585
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Labeled;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Labeled;->lineSpacing:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 586
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/Labeled$10;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/Labeled$10;-><init>(Ljavafx/scene/control/Labeled;D)V

    iput-object v3, v2, Ljavafx/scene/control/Labeled;->lineSpacing:Ljavafx/beans/property/DoubleProperty;

    .line 604
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Labeled;->lineSpacing:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/Labeled;
    return-object v1
.end method

.method public final mnemonicParsingProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 775
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->mnemonicParsing:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 776
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "mnemonicParsing"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Labeled;->mnemonicParsing:Ljavafx/beans/property/BooleanProperty;

    .line 778
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->mnemonicParsing:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method public final setAlignment(Ljavafx/geometry/Pos;)V
    .locals 4

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Pos;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Labeled;->alignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setContentDisplay(Ljavafx/scene/control/ContentDisplay;)V
    .locals 4

    .prologue
    .line 636
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/ContentDisplay;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Labeled;->contentDisplayProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setEllipsisString(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Labeled;->ellipsisStringProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    if-nez v3, :cond_0

    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v3, v1

    goto :goto_0
.end method

.method public final setFont(Ljavafx/scene/text/Font;)V
    .locals 4

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/text/Font;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Labeled;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setGraphic(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Labeled;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    .line 424
    return-void
.end method

.method public final setGraphicTextGap(D)V
    .locals 7

    .prologue
    .line 713
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Labeled;->graphicTextGapProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public final setLineSpacing(D)V
    .locals 7

    .prologue
    .line 607
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Labeled;->lineSpacingProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public final setMnemonicParsing(Z)V
    .locals 4

    .prologue
    .line 769
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Labeled;->mnemonicParsingProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 770
    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Labeled;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public final setTextAlignment(Ljavafx/scene/text/TextAlignment;)V
    .locals 4

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/text/TextAlignment;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Labeled;->textAlignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setTextFill(Ljavafx/scene/paint/Paint;)V
    .locals 4

    .prologue
    .line 723
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/paint/Paint;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Labeled;->textFillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 724
    return-void
.end method

.method public final setTextOverrun(Ljavafx/scene/control/OverrunStyle;)V
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/OverrunStyle;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Labeled;->textOverrunProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setUnderline(Z)V
    .locals 4

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Labeled;->underlineProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setWrapText(Z)V
    .locals 4

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Labeled;->wrapTextProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final textAlignmentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
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
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->textAlignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 185
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Labeled$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/text/TextAlignment;->LEFT:Ljavafx/scene/text/TextAlignment;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Labeled$2;-><init>(Ljavafx/scene/control/Labeled;Ljavafx/scene/text/TextAlignment;)V

    iput-object v2, v1, Ljavafx/scene/control/Labeled;->textAlignment:Ljavafx/beans/property/ObjectProperty;

    .line 203
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->textAlignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method public final textFillProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->textFill:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 732
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Labeled$14;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Labeled$14;-><init>(Ljavafx/scene/control/Labeled;Ljavafx/scene/paint/Paint;)V

    iput-object v2, v1, Ljavafx/scene/control/Labeled;->textFill:Ljavafx/beans/property/ObjectProperty;

    .line 750
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->textFill:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method public final textOverrunProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
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
    .line 214
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->textOverrun:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 215
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Labeled$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/control/OverrunStyle;->ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Labeled$3;-><init>(Ljavafx/scene/control/Labeled;Ljavafx/scene/control/OverrunStyle;)V

    iput-object v2, v1, Ljavafx/scene/control/Labeled;->textOverrun:Ljavafx/beans/property/ObjectProperty;

    .line 233
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->textOverrun:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method public final textProperty()Ljavafx/beans/property/StringProperty;
    .locals 8

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->text:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 140
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleStringProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "text"

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Labeled;->text:Ljavafx/beans/property/StringProperty;

    .line 142
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->text:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 793
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    .line 794
    invoke-super {v4}, Ljavafx/scene/control/Control;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\'"

    .line 795
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Labeled;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v1, v2

    .line 796
    .local v1, "builder":Ljava/lang/StringBuilder;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method public final underlineProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->underline:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 556
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Labeled$9;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Labeled$9;-><init>(Ljavafx/scene/control/Labeled;Z)V

    iput-object v2, v1, Ljavafx/scene/control/Labeled;->underline:Ljavafx/beans/property/BooleanProperty;

    .line 574
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->underline:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0
.end method

.method public final wrapTextProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 6

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->wrapText:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 284
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Labeled$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/Labeled$5;-><init>(Ljavafx/scene/control/Labeled;)V

    iput-object v2, v1, Ljavafx/scene/control/Labeled;->wrapText:Ljavafx/beans/property/BooleanProperty;

    .line 302
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled;->wrapText:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled;
    return-object v0
.end method
