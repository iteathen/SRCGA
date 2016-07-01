.class public Ljavafx/scene/control/ScrollBar;
.super Ljavafx/scene/control/Control;
.source "ScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/ScrollBar$StyleableProperties;
    }
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "scroll-bar"

.field private static final HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final VERTICAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;


# instance fields
.field private blockIncrement:Ljavafx/beans/property/DoubleProperty;

.field private max:Ljavafx/beans/property/DoubleProperty;

.field private min:Ljavafx/beans/property/DoubleProperty;

.field private orientation:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Orientation;",
            ">;"
        }
    .end annotation
.end field

.field private unitIncrement:Ljavafx/beans/property/DoubleProperty;

.field private value:Ljavafx/beans/property/DoubleProperty;

.field private visibleAmount:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 467
    const-string v0, "vertical"

    .line 468
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/ScrollBar;->VERTICAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 473
    const-string v0, "horizontal"

    .line 474
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/ScrollBar;->HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 473
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Control;-><init>()V

    .line 89
    move-object v1, v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/ScrollBar;->setWidth(D)V

    .line 90
    move-object v1, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/ScrollBar;->setHeight(D)V

    .line 91
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollBar;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "scroll-bar"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 92
    move-object v1, v0

    sget-object v2, Ljavafx/scene/AccessibleRole;->SCROLL_BAR:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/ScrollBar;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 97
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollBar;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    check-cast v1, Ljavafx/css/StyleableProperty;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 100
    move-object v1, v0

    sget-object v2, Ljavafx/scene/control/ScrollBar;->HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/ScrollBar;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 102
    return-void
.end method

.method static synthetic access$000()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Ljavafx/scene/control/ScrollBar;->VERTICAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$100()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Ljavafx/scene/control/ScrollBar;->HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/control/ScrollBar;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ScrollBar;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollBar;->orientation:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ScrollBar;
    return-object v0
.end method

.method static synthetic access$600(Ljavafx/scene/control/ScrollBar;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ScrollBar;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollBar;->unitIncrement:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ScrollBar;
    return-object v0
.end method

.method static synthetic access$700(Ljavafx/scene/control/ScrollBar;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ScrollBar;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollBar;->blockIncrement:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ScrollBar;
    return-object v0
.end method

.method private blockDecrement()V
    .locals 6

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->getBlockIncrement()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/ScrollBar;->adjustValue(D)V

    .line 359
    return-void
.end method

.method private blockIncrement()V
    .locals 6

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->getBlockIncrement()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/ScrollBar;->adjustValue(D)V

    .line 355
    return-void
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
    .line 452
    # getter for: Ljavafx/scene/control/ScrollBar$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/control/ScrollBar$StyleableProperties;->access$800()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public adjustValue(D)V
    .locals 17

    .prologue
    .line 320
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    move-wide/from16 v1, p1

    .local v1, "position":D
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v10

    sub-double/2addr v8, v10

    const-wide/16 v10, 0x0

    move-wide v12, v1

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v10 .. v15}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v3, v8

    .line 322
    .local v3, "posValue":D
    move-wide v8, v3

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Double;->compare(DD)I

    move-result v8

    if-eqz v8, :cond_2

    .line 323
    move-wide v8, v3

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-lez v8, :cond_3

    .line 324
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getBlockIncrement()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v5, v8

    .line 330
    .local v5, "newValue":D
    :goto_0
    move-wide v8, v1

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v10

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v12

    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v14

    sub-double/2addr v12, v14

    div-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    move v7, v8

    .line 331
    .local v7, "incrementing":Z
    move v8, v7

    if-eqz v8, :cond_0

    move-wide v8, v5

    move-wide v10, v3

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    move-wide v8, v3

    move-wide v5, v8

    .line 332
    :cond_0
    move v8, v7

    if-nez v8, :cond_1

    move-wide v8, v5

    move-wide v10, v3

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    move-wide v8, v3

    move-wide v5, v8

    .line 333
    :cond_1
    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v9

    move-wide v11, v5

    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v13

    invoke-static/range {v9 .. v14}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 335
    .end local v5    # "newValue":D
    .end local v7    # "incrementing":Z
    :cond_2
    return-void

    .line 327
    :cond_3
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getBlockIncrement()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-wide v5, v8

    .restart local v5    # "newValue":D
    goto :goto_0

    .line 330
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public final blockIncrementProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 255
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollBar;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollBar;->blockIncrement:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 256
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/ScrollBar$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/ScrollBar$3;-><init>(Ljavafx/scene/control/ScrollBar;D)V

    iput-object v3, v2, Ljavafx/scene/control/ScrollBar;->blockIncrement:Ljavafx/beans/property/DoubleProperty;

    .line 274
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollBar;->blockIncrement:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ScrollBar;
    return-object v1
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
    .line 363
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;-><init>(Ljavafx/scene/control/ScrollBar;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollBar;
    return-object v0
.end method

.method public decrement()V
    .locals 8

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getUnitIncrement()D

    move-result-wide v6

    sub-double/2addr v4, v6

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 351
    return-void
.end method

.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 509
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollBar;
    move-object v2, p1

    .local v2, "action":Ljavafx/scene/AccessibleAction;
    move-object v3, p2

    .local v3, "parameters":[Ljava/lang/Object;
    sget-object v5, Ljavafx/scene/control/ScrollBar$4;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 519
    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v5, v6, v7}, Ljavafx/scene/control/Control;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 510
    :pswitch_0
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/ScrollBar;->increment()V

    goto :goto_0

    .line 511
    :pswitch_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/ScrollBar;->decrement()V

    goto :goto_0

    .line 512
    :pswitch_2
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/scene/control/ScrollBar;->blockIncrement()V

    goto :goto_0

    .line 513
    :pswitch_3
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/scene/control/ScrollBar;->blockDecrement()V

    goto :goto_0

    .line 515
    :pswitch_4
    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Double;

    move-object v4, v5

    .line 516
    .local v4, "value":Ljava/lang/Double;
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    goto :goto_0

    .line 509
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final getBlockIncrement()D
    .locals 4

    .prologue
    .line 251
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollBar;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollBar;->blockIncrement:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ScrollBar;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/ScrollBar;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollBar;->blockIncrement:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

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
    .line 461
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    invoke-static {}, Ljavafx/scene/control/ScrollBar;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollBar;
    return-object v0
.end method

.method public final getMax()D
    .locals 4

    .prologue
    .line 137
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollBar;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollBar;->max:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ScrollBar;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/ScrollBar;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollBar;->max:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMin()D
    .locals 4

    .prologue
    .line 118
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollBar;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollBar;->min:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ScrollBar;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/ScrollBar;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollBar;->min:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getOrientation()Ljavafx/geometry/Orientation;
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollBar;->orientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollBar;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/ScrollBar;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollBar;->orientation:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Orientation;

    goto :goto_0
.end method

.method public final getUnitIncrement()D
    .locals 4

    .prologue
    .line 216
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollBar;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollBar;->unitIncrement:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ScrollBar;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/ScrollBar;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollBar;->unitIncrement:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getValue()D
    .locals 4

    .prologue
    .line 156
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollBar;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollBar;->value:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ScrollBar;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/ScrollBar;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollBar;->value:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getVisibleAmount()D
    .locals 4

    .prologue
    .line 287
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollBar;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollBar;->visibleAmount:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ScrollBar;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/ScrollBar;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollBar;->visibleAmount:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method protected impl_cssGetFocusTraversableInitialValue()Ljava/lang/Boolean;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollBar;
    return-object v0
.end method

.method public increment()V
    .locals 8

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getUnitIncrement()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 343
    return-void
.end method

.method public final maxProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollBar;->max:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 142
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "max"

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollBar;->max:Ljavafx/beans/property/DoubleProperty;

    .line 144
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollBar;->max:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollBar;
    return-object v0
.end method

.method public final minProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 7

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollBar;->min:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 123
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "min"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollBar;->min:Ljavafx/beans/property/DoubleProperty;

    .line 125
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollBar;->min:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollBar;
    return-object v0
.end method

.method public final orientationProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Orientation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollBar;->orientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 180
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ScrollBar$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/ScrollBar$1;-><init>(Ljavafx/scene/control/ScrollBar;Ljavafx/geometry/Orientation;)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollBar;->orientation:Ljavafx/beans/property/ObjectProperty;

    .line 203
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollBar;->orientation:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollBar;
    return-object v0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 498
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollBar;
    move-object v2, p1

    .local v2, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v3, p2

    .local v3, "parameters":[Ljava/lang/Object;
    sget-object v4, Ljavafx/scene/control/ScrollBar$4;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 503
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-super {v4, v5, v6}, Ljavafx/scene/control/Control;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljavafx/scene/control/ScrollBar;
    :goto_0
    return-object v1

    .line 499
    .restart local v1    # "this":Ljavafx/scene/control/ScrollBar;
    :pswitch_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 500
    :pswitch_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 501
    :pswitch_2
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 502
    :pswitch_3
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 498
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final setBlockIncrement(D)V
    .locals 7

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollBar;->blockIncrementProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 248
    return-void
.end method

.method public final setMax(D)V
    .locals 7

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollBar;->maxProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 134
    return-void
.end method

.method public final setMin(D)V
    .locals 7

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollBar;->minProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 115
    return-void
.end method

.method public final setOrientation(Ljavafx/geometry/Orientation;)V
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Orientation;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollBar;->orientationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public final setUnitIncrement(D)V
    .locals 7

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollBar;->unitIncrementProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 213
    return-void
.end method

.method public final setValue(D)V
    .locals 7

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollBar;->valueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 153
    return-void
.end method

.method public final setVisibleAmount(D)V
    .locals 7

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollBar;->visibleAmountProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 284
    return-void
.end method

.method public final unitIncrementProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 220
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollBar;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollBar;->unitIncrement:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 221
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/ScrollBar$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/ScrollBar$2;-><init>(Ljavafx/scene/control/ScrollBar;D)V

    iput-object v3, v2, Ljavafx/scene/control/ScrollBar;->unitIncrement:Ljavafx/beans/property/DoubleProperty;

    .line 239
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollBar;->unitIncrement:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ScrollBar;
    return-object v1
.end method

.method public final valueProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 7

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollBar;->value:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 161
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "value"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollBar;->value:Ljavafx/beans/property/DoubleProperty;

    .line 163
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollBar;->value:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollBar;
    return-object v0
.end method

.method public final visibleAmountProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 7

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollBar;->visibleAmount:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 292
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "visibleAmount"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollBar;->visibleAmount:Ljavafx/beans/property/DoubleProperty;

    .line 294
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollBar;->visibleAmount:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollBar;
    return-object v0
.end method
