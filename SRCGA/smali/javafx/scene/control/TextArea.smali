.class public Ljavafx/scene/control/TextArea;
.super Ljavafx/scene/control/TextInputControl;
.source "TextArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/TextArea$StyleableProperties;,
        Ljavafx/scene/control/TextArea$ParagraphListChange;,
        Ljavafx/scene/control/TextArea$ParagraphList;,
        Ljavafx/scene/control/TextArea$TextAreaContent;
    }
.end annotation


# static fields
.field public static final DEFAULT_PARAGRAPH_CAPACITY:I = 0x20

.field public static final DEFAULT_PREF_COLUMN_COUNT:I = 0x28

.field public static final DEFAULT_PREF_ROW_COUNT:I = 0xa


# instance fields
.field private prefColumnCount:Ljavafx/beans/property/IntegerProperty;

.field private prefRowCount:Ljavafx/beans/property/IntegerProperty;

.field private scrollLeft:Ljavafx/beans/property/DoubleProperty;

.field private scrollTop:Ljavafx/beans/property/DoubleProperty;

.field private wrapText:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea;
    move-object v1, v0

    const-string v2, ""

    invoke-direct {v1, v2}, Ljavafx/scene/control/TextArea;-><init>(Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 452
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TextArea;
    move-object v2, p1

    .local v2, "text":Ljava/lang/String;
    move-object v3, v1

    new-instance v4, Ljavafx/scene/control/TextArea$TextAreaContent;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljavafx/scene/control/TextArea$TextAreaContent;-><init>(Ljavafx/scene/control/TextArea$1;)V

    invoke-direct {v3, v4}, Ljavafx/scene/control/TextInputControl;-><init>(Ljavafx/scene/control/TextInputControl$Content;)V

    .line 484
    move-object v3, v1

    new-instance v4, Ljavafx/scene/control/TextArea$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljavafx/scene/control/TextArea$1;-><init>(Ljavafx/scene/control/TextArea;Z)V

    iput-object v4, v3, Ljavafx/scene/control/TextArea;->wrapText:Ljavafx/beans/property/BooleanProperty;

    .line 506
    move-object v3, v1

    new-instance v4, Ljavafx/scene/control/TextArea$2;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const/16 v7, 0x28

    invoke-direct {v5, v6, v7}, Ljavafx/scene/control/TextArea$2;-><init>(Ljavafx/scene/control/TextArea;I)V

    iput-object v4, v3, Ljavafx/scene/control/TextArea;->prefColumnCount:Ljavafx/beans/property/IntegerProperty;

    .line 546
    move-object v3, v1

    new-instance v4, Ljavafx/scene/control/TextArea$3;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const/16 v7, 0xa

    invoke-direct {v5, v6, v7}, Ljavafx/scene/control/TextArea$3;-><init>(Ljavafx/scene/control/TextArea;I)V

    iput-object v4, v3, Ljavafx/scene/control/TextArea;->prefRowCount:Ljavafx/beans/property/IntegerProperty;

    .line 587
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const-string v7, "scrollTop"

    const-wide/16 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v4, v3, Ljavafx/scene/control/TextArea;->scrollTop:Ljavafx/beans/property/DoubleProperty;

    .line 597
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const-string v7, "scrollLeft"

    const-wide/16 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v4, v3, Ljavafx/scene/control/TextArea;->scrollLeft:Ljavafx/beans/property/DoubleProperty;

    .line 454
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TextArea;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "text-area"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 455
    move-object v3, v1

    sget-object v4, Ljavafx/scene/AccessibleRole;->TEXT_AREA:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TextArea;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 456
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TextArea;->setText(Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method static synthetic access$1000(Ljavafx/scene/control/TextArea;)Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextArea;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextArea;->prefRowCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TextArea;
    return-object v0
.end method

.method static synthetic access$1100(Ljavafx/scene/control/TextArea;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextArea;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextArea;->wrapText:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TextArea;
    return-object v0
.end method

.method static synthetic access$900(Ljavafx/scene/control/TextArea;)Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextArea;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextArea;->prefColumnCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TextArea;
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
    .line 687
    # getter for: Ljavafx/scene/control/TextArea$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/control/TextArea$StyleableProperties;->access$1200()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
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
    .line 611
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;-><init>(Ljavafx/scene/control/TextArea;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea;
    return-object v0
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
    .line 696
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea;
    invoke-static {}, Ljavafx/scene/control/TextArea;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea;
    return-object v0
.end method

.method public getParagraphs()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextArea;->getContent()Ljavafx/scene/control/TextInputControl$Content;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TextArea$TextAreaContent;

    invoke-static {v1}, Ljavafx/scene/control/TextArea$TextAreaContent;->access$500(Ljavafx/scene/control/TextArea$TextAreaContent;)Ljavafx/scene/control/TextArea$ParagraphList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea;
    return-object v0
.end method

.method public final getPrefColumnCount()I
    .locals 2

    .prologue
    .line 538
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextArea;->prefColumnCount:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->getValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea;
    return v0
.end method

.method public final getPrefRowCount()I
    .locals 2

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextArea;->prefRowCount:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->getValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea;
    return v0
.end method

.method public final getScrollLeft()D
    .locals 3

    .prologue
    .line 599
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextArea;->scrollLeft:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea;
    return-wide v0
.end method

.method public final getScrollTop()D
    .locals 3

    .prologue
    .line 589
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextArea;->scrollTop:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea;
    return-wide v0
.end method

.method public final isWrapText()Z
    .locals 2

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextArea;->wrapText:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea;
    return v0
.end method

.method public final prefColumnCountProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 537
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextArea;->prefColumnCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea;
    return-object v0
.end method

.method public final prefRowCountProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 578
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextArea;->prefRowCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea;
    return-object v0
.end method

.method public final scrollLeftProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextArea;->scrollLeft:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea;
    return-object v0
.end method

.method public final scrollTopProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextArea;->scrollTop:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea;
    return-object v0
.end method

.method public final setPrefColumnCount(I)V
    .locals 4

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextArea;->prefColumnCount:Ljavafx/beans/property/IntegerProperty;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public final setPrefRowCount(I)V
    .locals 4

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextArea;->prefRowCount:Ljavafx/beans/property/IntegerProperty;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public final setScrollLeft(D)V
    .locals 7

    .prologue
    .line 600
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextArea;->scrollLeft:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public final setScrollTop(D)V
    .locals 7

    .prologue
    .line 590
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextArea;->scrollTop:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public final setWrapText(Z)V
    .locals 4

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextArea;->wrapText:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method final textUpdated()V
    .locals 4

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea;
    move-object v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/TextArea;->setScrollTop(D)V

    .line 461
    move-object v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/TextArea;->setScrollLeft(D)V

    .line 462
    return-void
.end method

.method public final wrapTextProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextArea;->wrapText:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea;
    return-object v0
.end method
