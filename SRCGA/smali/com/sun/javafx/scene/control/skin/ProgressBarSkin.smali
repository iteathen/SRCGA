.class public Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
.super Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
.source "ProgressBarSkin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;,
        Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties;
    }
.end annotation


# instance fields
.field private bar:Ljavafx/scene/layout/StackPane;

.field private barWidth:D

.field private clipRegion:Ljavafx/scene/layout/Region;

.field private indeterminateBarAnimationTime:Ljavafx/beans/property/DoubleProperty;

.field private indeterminateBarEscape:Ljavafx/beans/property/BooleanProperty;

.field private indeterminateBarFlip:Ljavafx/beans/property/BooleanProperty;

.field private indeterminateBarLength:Ljavafx/beans/property/DoubleProperty;

.field private track:Ljavafx/scene/layout/StackPane;

.field wasIndeterminate:Z


# direct methods
.method public constructor <init>(Ljavafx/scene/control/ProgressBar;)V
    .locals 12

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/ProgressBar;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;-><init>(Ljavafx/scene/control/ProgressIndicator;)V

    .line 72
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarLength:Ljavafx/beans/property/DoubleProperty;

    .line 104
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarEscape:Ljavafx/beans/property/BooleanProperty;

    .line 137
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarFlip:Ljavafx/beans/property/BooleanProperty;

    .line 170
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarAnimationTime:Ljavafx/beans/property/DoubleProperty;

    .line 288
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->wasIndeterminate:Z

    .line 226
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ProgressBar;->getWidth()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->snappedLeftInset()D

    move-result-wide v6

    sub-double/2addr v4, v6

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->snappedRightInset()D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/ProgressBar;->getProgress()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->barWidth:D

    .line 228
    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    move-object v2, v3

    .line 231
    .local v2, "listener":Ljavafx/beans/InvalidationListener;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ProgressBar;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 233
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->initialize()V

    .line 234
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ProgressIndicator;

    invoke-virtual {v3}, Ljavafx/scene/control/ProgressIndicator;->requestLayout()V

    .line 235
    return-void
.end method

.method static synthetic access$1000(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarAnimationTime:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-object v0
.end method

.method static synthetic access$1100(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarAnimationTimeProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-object v0
.end method

.method static synthetic access$1300(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->getIndeterminateBarFlip()Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-object v0
.end method

.method static synthetic access$1400(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->getIndeterminateBarEscape()Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-object v0
.end method

.method static synthetic access$1500(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;)D
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->getIndeterminateBarAnimationTime()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-wide v0
.end method

.method static synthetic access$1600(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;)Ljavafx/scene/layout/StackPane;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->bar:Ljavafx/scene/layout/StackPane;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-object v0
.end method

.method static synthetic access$400(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarLength:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-object v0
.end method

.method static synthetic access$500(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarLengthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-object v0
.end method

.method static synthetic access$600(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarEscape:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-object v0
.end method

.method static synthetic access$700(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarEscapeProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-object v0
.end method

.method static synthetic access$800(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarFlip:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-object v0
.end method

.method static synthetic access$900(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarFlipProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->lambda$new$431(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/layout/Background;Ljavafx/scene/layout/Background;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->lambda$initialize$432(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/layout/Background;Ljavafx/scene/layout/Background;)V

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
    .line 474
    # getter for: Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties;->access$1200()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getIndeterminateBarAnimationTime()D
    .locals 4

    .prologue
    .line 198
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarAnimationTime:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarAnimationTime:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method private getIndeterminateBarEscape()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarEscape:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarEscape:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method private getIndeterminateBarFlip()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarFlip:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarFlip:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method private getIndeterminateBarLength()Ljava/lang/Double;
    .locals 4

    .prologue
    .line 98
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarLength:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-object v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarLength:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method private indeterminateBarAnimationTimeProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 173
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarAnimationTime:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 174
    move-object v2, v1

    new-instance v3, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$4;-><init>(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;D)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarAnimationTime:Ljavafx/beans/property/DoubleProperty;

    .line 194
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarAnimationTime:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-object v1
.end method

.method private indeterminateBarEscapeProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarEscape:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 107
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$2;-><init>(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;Z)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarEscape:Ljavafx/beans/property/BooleanProperty;

    .line 127
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarEscape:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-object v0
.end method

.method private indeterminateBarFlipProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarFlip:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 140
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$3;-><init>(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;Z)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarFlip:Ljavafx/beans/property/BooleanProperty;

    .line 159
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarFlip:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-object v0
.end method

.method private indeterminateBarLengthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 74
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarLength:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 75
    move-object v2, v1

    new-instance v3, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;D)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarLength:Ljavafx/beans/property/DoubleProperty;

    .line 94
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarLength:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-object v1
.end method

.method private synthetic lambda$initialize$432(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/layout/Background;Ljavafx/scene/layout/Background;)V
    .locals 15

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object/from16 v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object/from16 v2, p2

    .local v2, "oldValue":Ljavafx/scene/layout/Background;
    move-object/from16 v3, p3

    .local v3, "newValue":Ljavafx/scene/layout/Background;
    move-object v7, v3

    if-eqz v7, :cond_1

    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/layout/Background;->getFills()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 260
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/layout/Background;->getFills()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljavafx/scene/layout/BackgroundFill;

    move-object v4, v7

    .line 261
    .local v4, "fills":[Ljavafx/scene/layout/BackgroundFill;
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/layout/Background;->getFills()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 262
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/layout/Background;->getFills()Ljava/util/List;

    move-result-object v7

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/layout/BackgroundFill;

    move-object v6, v7

    .line 263
    .local v6, "bf":Ljavafx/scene/layout/BackgroundFill;
    move-object v7, v4

    move v8, v5

    new-instance v9, Ljavafx/scene/layout/BackgroundFill;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    sget-object v11, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/scene/layout/BackgroundFill;->getRadii()Ljavafx/scene/layout/CornerRadii;

    move-result-object v12

    move-object v13, v6

    invoke-virtual {v13}, Ljavafx/scene/layout/BackgroundFill;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Ljavafx/scene/layout/BackgroundFill;-><init>(Ljavafx/scene/paint/Paint;Ljavafx/scene/layout/CornerRadii;Ljavafx/geometry/Insets;)V

    aput-object v9, v7, v8

    .line 261
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 265
    .end local v6    # "bf":Ljavafx/scene/layout/BackgroundFill;
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->clipRegion:Ljavafx/scene/layout/Region;

    new-instance v8, Ljavafx/scene/layout/Background;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v4

    invoke-direct {v9, v10}, Ljavafx/scene/layout/Background;-><init>([Ljavafx/scene/layout/BackgroundFill;)V

    invoke-virtual {v7, v8}, Ljavafx/scene/layout/Region;->setBackground(Ljavafx/scene/layout/Background;)V

    .line 267
    .end local v4    # "fills":[Ljavafx/scene/layout/BackgroundFill;
    .end local v5    # "i":I
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$431(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->updateProgress()V

    .line 230
    return-void
.end method


# virtual methods
.method public computeBaselineOffset(DDDD)D
    .locals 13

    .prologue
    .line 311
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-wide v2, p1

    .local v2, "topInset":D
    move-wide/from16 v4, p3

    .local v4, "rightInset":D
    move-wide/from16 v6, p5

    .local v6, "bottomInset":D
    move-wide/from16 v8, p7

    .local v8, "leftInset":D
    const-wide/high16 v10, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move-wide v1, v10

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-wide v1
.end method

.method protected computeMaxHeight(DDDDD)D
    .locals 15

    .prologue
    .line 331
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/ProgressIndicator;

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/control/ProgressIndicator;->prefHeight(D)D

    move-result-wide v12

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-wide v1
.end method

.method protected computeMaxWidth(DDDDD)D
    .locals 15

    .prologue
    .line 326
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
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
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/ProgressIndicator;

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/control/ProgressIndicator;->prefWidth(D)D

    move-result-wide v12

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-wide v1
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 17

    .prologue
    .line 321
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-wide v12, v4

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->bar:Ljavafx/scene/layout/StackPane;

    move-wide v15, v2

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v8

    add-double/2addr v12, v14

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-wide v1
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 19

    .prologue
    .line 316
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
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
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    move-wide v14, v10

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->bar:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v17

    check-cast v17, Ljavafx/scene/control/ProgressIndicator;

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/control/ProgressIndicator;->getWidth()D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide/from16 v16, v6

    add-double v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-wide v1
.end method

.method protected createIndeterminateTimeline()V
    .locals 17

    .prologue
    .line 272
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    invoke-virtual {v8}, Ljavafx/animation/Animation;->stop()V

    .line 274
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ProgressIndicator;

    move-object v1, v8

    .line 275
    .local v1, "control":Ljavafx/scene/control/ProgressIndicator;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/ProgressIndicator;->getWidth()D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->snappedLeftInset()D

    move-result-wide v10

    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->snappedRightInset()D

    move-result-wide v12

    add-double/2addr v10, v12

    sub-double/2addr v8, v10

    move-wide v2, v8

    .line 276
    .local v2, "w":D
    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->getIndeterminateBarEscape()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->getIndeterminateBarLength()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    neg-double v8, v8

    :goto_0
    move-wide v4, v8

    .line 277
    .local v4, "startX":D
    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->getIndeterminateBarEscape()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    move-wide v8, v2

    :goto_1
    move-wide v6, v8

    .line 280
    .local v6, "endX":D
    move-object v8, v0

    new-instance v9, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-wide v11, v4

    move-wide v13, v6

    move-object v15, v0

    invoke-direct/range {v10 .. v15}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;-><init>(DDLcom/sun/javafx/scene/control/skin/ProgressBarSkin;)V

    iput-object v9, v8, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    .line 281
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Ljavafx/animation/Animation;->setCycleCount(I)V

    .line 283
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->clipRegion:Ljavafx/scene/layout/Region;

    invoke-virtual {v8}, Ljavafx/scene/layout/Region;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v8

    new-instance v9, Ljavafx/beans/binding/When;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->bar:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v11}, Ljavafx/scene/layout/StackPane;->scaleXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v11

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    const-wide v14, 0x2b2bff2ee48e0530L    # 1.0E-100

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/beans/property/DoubleProperty;->isEqualTo(DD)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavafx/beans/binding/When;-><init>(Ljavafx/beans/value/ObservableBooleanValue;)V

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->bar:Ljavafx/scene/layout/StackPane;

    .line 284
    invoke-virtual {v10}, Ljavafx/scene/layout/StackPane;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v10

    move-wide v11, v2

    invoke-virtual {v10, v11, v12}, Ljavafx/beans/property/DoubleProperty;->subtract(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v10

    move-object v11, v0

    invoke-direct {v11}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarLengthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavafx/beans/binding/DoubleBinding;->add(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/beans/binding/When;->then(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/When$NumberConditionBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->bar:Ljavafx/scene/layout/StackPane;

    .line 285
    invoke-virtual {v10}, Ljavafx/scene/layout/StackPane;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/beans/property/DoubleProperty;->negate()Ljavafx/beans/binding/DoubleBinding;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/beans/binding/When$NumberConditionBuilder;->otherwise(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v9

    .line 283
    invoke-virtual {v8, v9}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 286
    return-void

    .line 276
    .end local v4    # "startX":D
    .end local v6    # "endX":D
    :cond_1
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 277
    .restart local v4    # "startX":D
    :cond_2
    move-wide v8, v2

    move-object v10, v0

    invoke-direct {v10}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->getIndeterminateBarLength()Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    sub-double/2addr v8, v10

    goto :goto_1
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
    .line 482
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    return-object v0
.end method

.method protected initialize()V
    .locals 7

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/StackPane;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->track:Ljavafx/scene/layout/StackPane;

    .line 246
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->track:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v1}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "track"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 248
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/StackPane;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->bar:Ljavafx/scene/layout/StackPane;

    .line 249
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->bar:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v1}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "bar"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 251
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljavafx/scene/Node;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->track:Ljavafx/scene/layout/StackPane;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->bar:Ljavafx/scene/layout/StackPane;

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 254
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/Region;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljavafx/scene/layout/Region;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->clipRegion:Ljavafx/scene/layout/Region;

    .line 258
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->bar:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v1}, Ljavafx/scene/layout/StackPane;->backgroundProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;)Ljavafx/beans/value/ChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 268
    return-void
.end method

.method protected layoutChildren(DDDD)V
    .locals 23

    .prologue
    .line 338
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-wide/from16 v3, p1

    .local v3, "x":D
    move-wide/from16 v5, p3

    .local v5, "y":D
    move-wide/from16 v7, p5

    .local v7, "w":D
    move-wide/from16 v9, p7

    .local v9, "h":D
    move-object v13, v2

    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v13

    check-cast v13, Ljavafx/scene/control/ProgressIndicator;

    move-object v11, v13

    .line 339
    .local v11, "control":Ljavafx/scene/control/ProgressIndicator;
    move-object v13, v11

    invoke-virtual {v13}, Ljavafx/scene/control/ProgressIndicator;->isIndeterminate()Z

    move-result v13

    move v12, v13

    .line 342
    .local v12, "isIndeterminate":Z
    move-object v13, v2

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->clipRegion:Ljavafx/scene/layout/Region;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    invoke-virtual/range {v13 .. v21}, Ljavafx/scene/layout/Region;->resizeRelocate(DDDD)V

    .line 344
    move-object v13, v2

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->track:Ljavafx/scene/layout/StackPane;

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    invoke-virtual/range {v13 .. v21}, Ljavafx/scene/layout/StackPane;->resizeRelocate(DDDD)V

    .line 345
    move-object v13, v2

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->bar:Ljavafx/scene/layout/StackPane;

    move-wide v14, v3

    move-wide/from16 v16, v5

    move/from16 v18, v12

    if-eqz v18, :cond_2

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->getIndeterminateBarLength()Ljava/lang/Double;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    :goto_0
    move-wide/from16 v20, v9

    invoke-virtual/range {v13 .. v21}, Ljavafx/scene/layout/StackPane;->resizeRelocate(DDDD)V

    .line 348
    move-object v13, v2

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->track:Ljavafx/scene/layout/StackPane;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 351
    move v13, v12

    if-eqz v13, :cond_3

    .line 352
    move-object v13, v2

    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->createIndeterminateTimeline()V

    .line 353
    move-object v13, v2

    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v13

    check-cast v13, Ljavafx/scene/control/ProgressIndicator;

    invoke-virtual {v13}, Ljavafx/scene/control/ProgressIndicator;->impl_isTreeVisible()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 354
    move-object v13, v2

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    invoke-virtual {v13}, Ljavafx/animation/Animation;->play()V

    .line 358
    :cond_0
    move-object v13, v2

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->bar:Ljavafx/scene/layout/StackPane;

    move-object v14, v2

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->clipRegion:Ljavafx/scene/layout/Region;

    invoke-virtual {v13, v14}, Ljavafx/scene/layout/StackPane;->setClip(Ljavafx/scene/Node;)V

    .line 369
    :cond_1
    :goto_1
    return-void

    .line 345
    :cond_2
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->barWidth:D

    move-wide/from16 v18, v0

    goto :goto_0

    .line 359
    :cond_3
    move-object v13, v2

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    if-eqz v13, :cond_1

    .line 360
    move-object v13, v2

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    invoke-virtual {v13}, Ljavafx/animation/Animation;->stop()V

    .line 361
    move-object v13, v2

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    .line 364
    move-object v13, v2

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->bar:Ljavafx/scene/layout/StackPane;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljavafx/scene/layout/StackPane;->setClip(Ljavafx/scene/Node;)V

    .line 365
    move-object v13, v2

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->bar:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/layout/StackPane;->setScaleX(D)V

    .line 366
    move-object v13, v2

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->bar:Ljavafx/scene/layout/StackPane;

    const-wide/16 v14, 0x0

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/layout/StackPane;->setTranslateX(D)V

    .line 367
    move-object v13, v2

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->clipRegion:Ljavafx/scene/layout/Region;

    invoke-virtual {v13}, Ljavafx/scene/layout/Region;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/beans/property/DoubleProperty;->unbind()V

    goto :goto_1
.end method

.method protected updateProgress()V
    .locals 12

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ProgressIndicator;

    move-object v1, v3

    .line 294
    .local v1, "control":Ljavafx/scene/control/ProgressIndicator;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ProgressIndicator;->isIndeterminate()Z

    move-result v3

    move v2, v3

    .line 295
    .local v2, "isIndeterminate":Z
    move v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->wasIndeterminate:Z

    if-nez v3, :cond_1

    .line 296
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ProgressIndicator;->getWidth()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->snappedLeftInset()D

    move-result-wide v6

    sub-double/2addr v4, v6

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->snappedRightInset()D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/ProgressIndicator;->getProgress()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->barWidth:D

    .line 297
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ProgressIndicator;

    invoke-virtual {v3}, Ljavafx/scene/control/ProgressIndicator;->requestLayout()V

    .line 299
    :cond_1
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->wasIndeterminate:Z

    .line 300
    return-void
.end method
