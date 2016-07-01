.class public final Ljavafx/stage/Screen;
.super Ljava/lang/Object;
.source "Screen.java"


# static fields
.field private static final accessor:Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

.field private static final configurationDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static primary:Ljavafx/stage/Screen;

.field private static final screens:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/stage/Screen;",
            ">;"
        }
    .end annotation
.end field

.field private static final unmodifiableScreens:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/stage/Screen;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bounds:Ljavafx/geometry/Rectangle2D;

.field private dpi:D

.field private renderScale:F

.field private visualBounds:Ljavafx/geometry/Rectangle2D;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Ljavafx/stage/Screen;->configurationDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v0

    sput-object v0, Ljavafx/stage/Screen;->screens:Ljavafx/collections/ObservableList;

    .line 71
    sget-object v0, Ljavafx/stage/Screen;->screens:Ljavafx/collections/ObservableList;

    .line 72
    invoke-static {v0}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v0

    sput-object v0, Ljavafx/stage/Screen;->unmodifiableScreens:Ljavafx/collections/ObservableList;

    .line 75
    new-instance v0, Ljavafx/stage/Screen$1;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljavafx/stage/Screen$1;-><init>()V

    invoke-static {v0}, Lcom/sun/javafx/stage/ScreenHelper;->setScreenAccessor(Lcom/sun/javafx/stage/ScreenHelper$ScreenAccessor;)V

    .line 79
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-static {}, Ljavafx/stage/Screen$$Lambda$1;->lambdaFactory$()Lcom/sun/javafx/tk/TKScreenConfigurationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/javafx/tk/Toolkit;->setScreenConfigurationListener(Lcom/sun/javafx/tk/TKScreenConfigurationListener;)Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

    move-result-object v0

    sput-object v0, Ljavafx/stage/Screen;->accessor:Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

    .line 80
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Screen;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 239
    move-object v1, v0

    sget-object v2, Ljavafx/geometry/Rectangle2D;->EMPTY:Ljavafx/geometry/Rectangle2D;

    iput-object v2, v1, Ljavafx/stage/Screen;->bounds:Ljavafx/geometry/Rectangle2D;

    .line 254
    move-object v1, v0

    sget-object v2, Ljavafx/geometry/Rectangle2D;->EMPTY:Ljavafx/geometry/Rectangle2D;

    iput-object v2, v1, Ljavafx/stage/Screen;->visualBounds:Ljavafx/geometry/Rectangle2D;

    .line 83
    return-void
.end method

.method static synthetic access$000(Ljavafx/stage/Screen;)F
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/Screen;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/stage/Screen;->getRenderScale()F

    move-result v1

    move v0, v1

    .end local v0    # "x0":Ljavafx/stage/Screen;
    return v0
.end method

.method static synthetic access$lambda$0()V
    .locals 0

    invoke-static {}, Ljavafx/stage/Screen;->lambda$static$23()V

    return-void
.end method

.method private static checkDirty()V
    .locals 3

    .prologue
    .line 86
    sget-object v0, Ljavafx/stage/Screen;->configurationDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Ljavafx/stage/Screen;->updateConfiguration()V

    .line 89
    :cond_0
    return-void
.end method

.method public static getPrimary()Ljavafx/stage/Screen;
    .locals 1

    .prologue
    .line 187
    invoke-static {}, Ljavafx/stage/Screen;->checkDirty()V

    .line 188
    sget-object v0, Ljavafx/stage/Screen;->primary:Ljavafx/stage/Screen;

    return-object v0
.end method

.method private getRenderScale()F
    .locals 2

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Screen;
    move-object v1, v0

    iget v1, v1, Ljavafx/stage/Screen;->renderScale:F

    move v0, v1

    .end local v0    # "this":Ljavafx/stage/Screen;
    return v0
.end method

.method static getScreenForNative(Ljava/lang/Object;)Ljavafx/stage/Screen;
    .locals 22

    .prologue
    .line 166
    move-object/from16 v1, p0

    .local v1, "obj":Ljava/lang/Object;
    sget-object v13, Ljavafx/stage/Screen;->accessor:Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

    move-object v14, v1

    invoke-interface {v13, v14}, Lcom/sun/javafx/tk/ScreenConfigurationAccessor;->getMinX(Ljava/lang/Object;)I

    move-result v13

    int-to-double v13, v13

    move-wide v2, v13

    .line 167
    .local v2, "x":D
    sget-object v13, Ljavafx/stage/Screen;->accessor:Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

    move-object v14, v1

    invoke-interface {v13, v14}, Lcom/sun/javafx/tk/ScreenConfigurationAccessor;->getMinY(Ljava/lang/Object;)I

    move-result v13

    int-to-double v13, v13

    move-wide v4, v13

    .line 168
    .local v4, "y":D
    sget-object v13, Ljavafx/stage/Screen;->accessor:Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

    move-object v14, v1

    invoke-interface {v13, v14}, Lcom/sun/javafx/tk/ScreenConfigurationAccessor;->getWidth(Ljava/lang/Object;)I

    move-result v13

    int-to-double v13, v13

    move-wide v6, v13

    .line 169
    .local v6, "w":D
    sget-object v13, Ljavafx/stage/Screen;->accessor:Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

    move-object v14, v1

    invoke-interface {v13, v14}, Lcom/sun/javafx/tk/ScreenConfigurationAccessor;->getHeight(Ljava/lang/Object;)I

    move-result v13

    int-to-double v13, v13

    move-wide v8, v13

    .line 170
    .local v8, "h":D
    const/4 v13, 0x0

    move-object v10, v13

    .line 171
    .local v10, "intScr":Ljavafx/stage/Screen;
    const/4 v13, 0x0

    move v11, v13

    .local v11, "i":I
    :goto_0
    move v13, v11

    sget-object v14, Ljavafx/stage/Screen;->screens:Ljavafx/collections/ObservableList;

    invoke-interface {v14}, Ljavafx/collections/ObservableList;->size()I

    move-result v14

    if-ge v13, v14, :cond_2

    .line 172
    sget-object v13, Ljavafx/stage/Screen;->screens:Ljavafx/collections/ObservableList;

    move v14, v11

    invoke-interface {v13, v14}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavafx/stage/Screen;

    move-object v12, v13

    .line 173
    .local v12, "scr":Ljavafx/stage/Screen;
    move-object v13, v12

    iget-object v13, v13, Ljavafx/stage/Screen;->bounds:Ljavafx/geometry/Rectangle2D;

    move-wide v14, v2

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-virtual/range {v13 .. v21}, Ljavafx/geometry/Rectangle2D;->contains(DDDD)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 174
    move-object v13, v12

    move-object v1, v13

    .line 180
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v12    # "scr":Ljavafx/stage/Screen;
    :goto_1
    return-object v1

    .line 176
    .restart local v1    # "obj":Ljava/lang/Object;
    .restart local v12    # "scr":Ljavafx/stage/Screen;
    :cond_0
    move-object v13, v10

    if-nez v13, :cond_1

    move-object v13, v12

    iget-object v13, v13, Ljavafx/stage/Screen;->bounds:Ljavafx/geometry/Rectangle2D;

    move-wide v14, v2

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-virtual/range {v13 .. v21}, Ljavafx/geometry/Rectangle2D;->intersects(DDDD)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 177
    move-object v13, v12

    move-object v10, v13

    .line 171
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 180
    .end local v12    # "scr":Ljavafx/stage/Screen;
    :cond_2
    move-object v13, v10

    if-nez v13, :cond_3

    invoke-static {}, Ljavafx/stage/Screen;->getPrimary()Ljavafx/stage/Screen;

    move-result-object v13

    :goto_2
    move-object v1, v13

    goto :goto_1

    :cond_3
    move-object v13, v10

    goto :goto_2
.end method

.method public static getScreens()Ljavafx/collections/ObservableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/stage/Screen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {}, Ljavafx/stage/Screen;->checkDirty()V

    .line 196
    sget-object v0, Ljavafx/stage/Screen;->unmodifiableScreens:Ljavafx/collections/ObservableList;

    return-object v0
.end method

.method public static getScreensForRectangle(DDDD)Ljavafx/collections/ObservableList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDD)",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/stage/Screen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    move-wide/from16 v0, p0

    .local v0, "x":D
    move-wide/from16 v2, p2

    .local v2, "y":D
    move-wide/from16 v4, p4

    .local v4, "width":D
    move-wide/from16 v6, p6

    .local v6, "height":D
    invoke-static {}, Ljavafx/stage/Screen;->checkDirty()V

    .line 215
    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v11

    move-object v8, v11

    .line 216
    .local v8, "results":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/stage/Screen;>;"
    sget-object v11, Ljavafx/stage/Screen;->screens:Ljavafx/collections/ObservableList;

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v9, v11

    :goto_0
    move-object v11, v9

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v11, v9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/stage/Screen;

    move-object v10, v11

    .line 217
    .local v10, "screen":Ljavafx/stage/Screen;
    move-object v11, v10

    iget-object v11, v11, Ljavafx/stage/Screen;->bounds:Ljavafx/geometry/Rectangle2D;

    move-wide v12, v0

    move-wide v14, v2

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    invoke-virtual/range {v11 .. v19}, Ljavafx/geometry/Rectangle2D;->intersects(DDDD)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 218
    move-object v11, v8

    move-object v12, v10

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 220
    :cond_0
    goto :goto_0

    .line 221
    .end local v10    # "screen":Ljavafx/stage/Screen;
    :cond_1
    move-object v11, v8

    move-object v0, v11

    .end local v0    # "x":D
    return-object v0
.end method

.method public static getScreensForRectangle(Ljavafx/geometry/Rectangle2D;)Ljavafx/collections/ObservableList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Rectangle2D;",
            ")",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/stage/Screen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    move-object v1, p0

    .local v1, "r":Ljavafx/geometry/Rectangle2D;
    invoke-static {}, Ljavafx/stage/Screen;->checkDirty()V

    .line 233
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/geometry/Rectangle2D;->getMinY()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/Rectangle2D;->getWidth()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Rectangle2D;->getHeight()D

    move-result-wide v8

    invoke-static/range {v2 .. v9}, Ljavafx/stage/Screen;->getScreensForRectangle(DDDD)Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "r":Ljavafx/geometry/Rectangle2D;
    return-object v1
.end method

.method private static synthetic lambda$static$23()V
    .locals 0

    .prologue
    .line 79
    invoke-static {}, Ljavafx/stage/Screen;->updateConfiguration()V

    return-void
.end method

.method private static nativeToScreen(Ljava/lang/Object;Ljavafx/stage/Screen;)Ljavafx/stage/Screen;
    .locals 30

    .prologue
    .line 132
    move-object/from16 v4, p0

    .local v4, "obj":Ljava/lang/Object;
    move-object/from16 v5, p1

    .local v5, "screen":Ljavafx/stage/Screen;
    sget-object v18, Ljavafx/stage/Screen;->accessor:Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

    move-object/from16 v19, v4

    invoke-interface/range {v18 .. v19}, Lcom/sun/javafx/tk/ScreenConfigurationAccessor;->getMinX(Ljava/lang/Object;)I

    move-result v18

    move/from16 v6, v18

    .line 133
    .local v6, "minX":I
    sget-object v18, Ljavafx/stage/Screen;->accessor:Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

    move-object/from16 v19, v4

    invoke-interface/range {v18 .. v19}, Lcom/sun/javafx/tk/ScreenConfigurationAccessor;->getMinY(Ljava/lang/Object;)I

    move-result v18

    move/from16 v7, v18

    .line 134
    .local v7, "minY":I
    sget-object v18, Ljavafx/stage/Screen;->accessor:Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

    move-object/from16 v19, v4

    invoke-interface/range {v18 .. v19}, Lcom/sun/javafx/tk/ScreenConfigurationAccessor;->getWidth(Ljava/lang/Object;)I

    move-result v18

    move/from16 v8, v18

    .line 135
    .local v8, "width":I
    sget-object v18, Ljavafx/stage/Screen;->accessor:Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

    move-object/from16 v19, v4

    invoke-interface/range {v18 .. v19}, Lcom/sun/javafx/tk/ScreenConfigurationAccessor;->getHeight(Ljava/lang/Object;)I

    move-result v18

    move/from16 v9, v18

    .line 136
    .local v9, "height":I
    sget-object v18, Ljavafx/stage/Screen;->accessor:Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

    move-object/from16 v19, v4

    invoke-interface/range {v18 .. v19}, Lcom/sun/javafx/tk/ScreenConfigurationAccessor;->getVisualMinX(Ljava/lang/Object;)I

    move-result v18

    move/from16 v10, v18

    .line 137
    .local v10, "visualMinX":I
    sget-object v18, Ljavafx/stage/Screen;->accessor:Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

    move-object/from16 v19, v4

    invoke-interface/range {v18 .. v19}, Lcom/sun/javafx/tk/ScreenConfigurationAccessor;->getVisualMinY(Ljava/lang/Object;)I

    move-result v18

    move/from16 v11, v18

    .line 138
    .local v11, "visualMinY":I
    sget-object v18, Ljavafx/stage/Screen;->accessor:Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

    move-object/from16 v19, v4

    invoke-interface/range {v18 .. v19}, Lcom/sun/javafx/tk/ScreenConfigurationAccessor;->getVisualWidth(Ljava/lang/Object;)I

    move-result v18

    move/from16 v12, v18

    .line 139
    .local v12, "visualWidth":I
    sget-object v18, Ljavafx/stage/Screen;->accessor:Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

    move-object/from16 v19, v4

    invoke-interface/range {v18 .. v19}, Lcom/sun/javafx/tk/ScreenConfigurationAccessor;->getVisualHeight(Ljava/lang/Object;)I

    move-result v18

    move/from16 v13, v18

    .line 140
    .local v13, "visualHeight":I
    sget-object v18, Ljavafx/stage/Screen;->accessor:Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

    move-object/from16 v19, v4

    invoke-interface/range {v18 .. v19}, Lcom/sun/javafx/tk/ScreenConfigurationAccessor;->getDPI(Ljava/lang/Object;)F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v14, v18

    .line 141
    .local v14, "dpi":D
    sget-object v18, Ljavafx/stage/Screen;->accessor:Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

    move-object/from16 v19, v4

    invoke-interface/range {v18 .. v19}, Lcom/sun/javafx/tk/ScreenConfigurationAccessor;->getRenderScale(Ljava/lang/Object;)F

    move-result v18

    move/from16 v16, v18

    .line 142
    .local v16, "renderScale":F
    move-object/from16 v18, v5

    if-eqz v18, :cond_0

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/stage/Screen;->bounds:Ljavafx/geometry/Rectangle2D;

    move-object/from16 v18, v0

    .line 143
    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v18

    move/from16 v20, v6

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_0

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/stage/Screen;->bounds:Ljavafx/geometry/Rectangle2D;

    move-object/from16 v18, v0

    .line 144
    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Rectangle2D;->getMinY()D

    move-result-wide v18

    move/from16 v20, v7

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_0

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/stage/Screen;->bounds:Ljavafx/geometry/Rectangle2D;

    move-object/from16 v18, v0

    .line 145
    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Rectangle2D;->getWidth()D

    move-result-wide v18

    move/from16 v20, v8

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_0

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/stage/Screen;->bounds:Ljavafx/geometry/Rectangle2D;

    move-object/from16 v18, v0

    .line 146
    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Rectangle2D;->getHeight()D

    move-result-wide v18

    move/from16 v20, v9

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_0

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/stage/Screen;->visualBounds:Ljavafx/geometry/Rectangle2D;

    move-object/from16 v18, v0

    .line 147
    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v18

    move/from16 v20, v10

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_0

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/stage/Screen;->visualBounds:Ljavafx/geometry/Rectangle2D;

    move-object/from16 v18, v0

    .line 148
    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Rectangle2D;->getMinY()D

    move-result-wide v18

    move/from16 v20, v11

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_0

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/stage/Screen;->visualBounds:Ljavafx/geometry/Rectangle2D;

    move-object/from16 v18, v0

    .line 149
    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Rectangle2D;->getWidth()D

    move-result-wide v18

    move/from16 v20, v12

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_0

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/stage/Screen;->visualBounds:Ljavafx/geometry/Rectangle2D;

    move-object/from16 v18, v0

    .line 150
    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Rectangle2D;->getHeight()D

    move-result-wide v18

    move/from16 v20, v13

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    cmpl-double v18, v18, v20

    if-nez v18, :cond_0

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/stage/Screen;->dpi:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v14

    cmpl-double v18, v18, v20

    if-nez v18, :cond_0

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget v0, v0, Ljavafx/stage/Screen;->renderScale:F

    move/from16 v18, v0

    move/from16 v19, v16

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_1

    .line 154
    :cond_0
    new-instance v18, Ljavafx/stage/Screen;

    move-object/from16 v29, v18

    move-object/from16 v18, v29

    move-object/from16 v19, v29

    invoke-direct/range {v19 .. v19}, Ljavafx/stage/Screen;-><init>()V

    move-object/from16 v17, v18

    .line 155
    .local v17, "s":Ljavafx/stage/Screen;
    move-object/from16 v18, v17

    new-instance v19, Ljavafx/geometry/Rectangle2D;

    move-object/from16 v29, v19

    move-object/from16 v19, v29

    move-object/from16 v20, v29

    move/from16 v21, v6

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    move/from16 v23, v7

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    move/from16 v25, v8

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move/from16 v27, v9

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    invoke-direct/range {v20 .. v28}, Ljavafx/geometry/Rectangle2D;-><init>(DDDD)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavafx/stage/Screen;->bounds:Ljavafx/geometry/Rectangle2D;

    .line 156
    move-object/from16 v18, v17

    new-instance v19, Ljavafx/geometry/Rectangle2D;

    move-object/from16 v29, v19

    move-object/from16 v19, v29

    move-object/from16 v20, v29

    move/from16 v21, v10

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    move/from16 v23, v11

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    move/from16 v25, v12

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move/from16 v27, v13

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    invoke-direct/range {v20 .. v28}, Ljavafx/geometry/Rectangle2D;-><init>(DDDD)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavafx/stage/Screen;->visualBounds:Ljavafx/geometry/Rectangle2D;

    .line 157
    move-object/from16 v18, v17

    move-wide/from16 v19, v14

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Ljavafx/stage/Screen;->dpi:D

    .line 158
    move-object/from16 v18, v17

    move/from16 v19, v16

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Ljavafx/stage/Screen;->renderScale:F

    .line 159
    move-object/from16 v18, v17

    move-object/from16 v4, v18

    .line 161
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v17    # "s":Ljavafx/stage/Screen;
    :goto_0
    return-object v4

    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_1
    const/16 v18, 0x0

    move-object/from16 v4, v18

    goto :goto_0
.end method

.method private static updateConfiguration()V
    .locals 13

    .prologue
    .line 92
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/javafx/tk/Toolkit;->getPrimaryScreen()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    .line 93
    .local v0, "primaryScreen":Ljava/lang/Object;
    move-object v9, v0

    sget-object v10, Ljavafx/stage/Screen;->primary:Ljavafx/stage/Screen;

    invoke-static {v9, v10}, Ljavafx/stage/Screen;->nativeToScreen(Ljava/lang/Object;Ljavafx/stage/Screen;)Ljavafx/stage/Screen;

    move-result-object v9

    move-object v1, v9

    .line 94
    .local v1, "screenTmp":Ljavafx/stage/Screen;
    move-object v9, v1

    if-eqz v9, :cond_0

    .line 95
    move-object v9, v1

    sput-object v9, Ljavafx/stage/Screen;->primary:Ljavafx/stage/Screen;

    .line 98
    :cond_0
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/javafx/tk/Toolkit;->getScreens()Ljava/util/List;

    move-result-object v9

    move-object v2, v9

    .line 102
    .local v2, "screens":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v3, v9

    .line 105
    .local v3, "newScreens":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/stage/Screen;>;"
    sget-object v9, Ljavafx/stage/Screen;->screens:Ljavafx/collections/ObservableList;

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->size()I

    move-result v9

    move-object v10, v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v9, v10, :cond_4

    const/4 v9, 0x1

    :goto_0
    move v4, v9

    .line 106
    .local v4, "canKeepOld":Z
    const/4 v9, 0x0

    move v5, v9

    .local v5, "i":I
    :goto_1
    move v9, v5

    move-object v10, v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 107
    move-object v9, v2

    move v10, v5

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    .line 108
    .local v6, "obj":Ljava/lang/Object;
    const/4 v9, 0x0

    move-object v7, v9

    .line 109
    .local v7, "origScreen":Ljavafx/stage/Screen;
    move v9, v4

    if-eqz v9, :cond_1

    .line 110
    sget-object v9, Ljavafx/stage/Screen;->screens:Ljavafx/collections/ObservableList;

    move v10, v5

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/stage/Screen;

    move-object v7, v9

    .line 112
    :cond_1
    move-object v9, v6

    move-object v10, v7

    invoke-static {v9, v10}, Ljavafx/stage/Screen;->nativeToScreen(Ljava/lang/Object;Ljavafx/stage/Screen;)Ljavafx/stage/Screen;

    move-result-object v9

    move-object v8, v9

    .line 113
    .local v8, "newScreen":Ljavafx/stage/Screen;
    move-object v9, v8

    if-eqz v9, :cond_3

    .line 114
    move v9, v4

    if-eqz v9, :cond_2

    .line 115
    const/4 v9, 0x0

    move v4, v9

    .line 116
    move-object v9, v3

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->clear()V

    .line 117
    move-object v9, v3

    sget-object v10, Ljavafx/stage/Screen;->screens:Ljavafx/collections/ObservableList;

    const/4 v11, 0x0

    move v12, v5

    invoke-interface {v10, v11, v12}, Ljavafx/collections/ObservableList;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v9

    .line 119
    :cond_2
    move-object v9, v3

    move-object v10, v8

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 106
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 105
    .end local v4    # "canKeepOld":Z
    .end local v5    # "i":I
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v7    # "origScreen":Ljavafx/stage/Screen;
    .end local v8    # "newScreen":Ljavafx/stage/Screen;
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 122
    .restart local v4    # "canKeepOld":Z
    .restart local v5    # "i":I
    :cond_5
    move v9, v4

    if-nez v9, :cond_6

    .line 123
    sget-object v9, Ljavafx/stage/Screen;->screens:Ljavafx/collections/ObservableList;

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->clear()V

    .line 124
    sget-object v9, Ljavafx/stage/Screen;->screens:Ljavafx/collections/ObservableList;

    move-object v10, v3

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v9

    .line 127
    :cond_6
    sget-object v9, Ljavafx/stage/Screen;->configurationDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 128
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 311
    move-object v1, p0

    .local v1, "this":Ljavafx/stage/Screen;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    move-object v5, v1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 318
    .end local v1    # "this":Ljavafx/stage/Screen;
    :goto_0
    return v1

    .line 312
    .restart local v1    # "this":Ljavafx/stage/Screen;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Ljavafx/stage/Screen;

    if-eqz v4, :cond_5

    .line 313
    move-object v4, v2

    check-cast v4, Ljavafx/stage/Screen;

    move-object v3, v4

    .line 314
    .local v3, "other":Ljavafx/stage/Screen;
    move-object v4, v1

    iget-object v4, v4, Ljavafx/stage/Screen;->bounds:Ljavafx/geometry/Rectangle2D;

    if-nez v4, :cond_2

    move-object v4, v3

    iget-object v4, v4, Ljavafx/stage/Screen;->bounds:Ljavafx/geometry/Rectangle2D;

    if-nez v4, :cond_3

    :cond_1
    move-object v4, v1

    iget-object v4, v4, Ljavafx/stage/Screen;->visualBounds:Ljavafx/geometry/Rectangle2D;

    if-nez v4, :cond_4

    move-object v4, v3

    iget-object v4, v4, Ljavafx/stage/Screen;->visualBounds:Ljavafx/geometry/Rectangle2D;

    if-nez v4, :cond_3

    .line 315
    :goto_1
    move-object v4, v3

    iget-wide v4, v4, Ljavafx/stage/Screen;->dpi:D

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/stage/Screen;->dpi:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_3

    move-object v4, v3

    iget v4, v4, Ljavafx/stage/Screen;->renderScale:F

    move-object v5, v1

    iget v5, v5, Ljavafx/stage/Screen;->renderScale:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    move v1, v4

    goto :goto_0

    .line 314
    :cond_2
    move-object v4, v1

    iget-object v4, v4, Ljavafx/stage/Screen;->bounds:Ljavafx/geometry/Rectangle2D;

    move-object v5, v3

    iget-object v5, v5, Ljavafx/stage/Screen;->bounds:Ljavafx/geometry/Rectangle2D;

    invoke-virtual {v4, v5}, Ljavafx/geometry/Rectangle2D;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 315
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 314
    :cond_4
    move-object v4, v1

    iget-object v4, v4, Ljavafx/stage/Screen;->visualBounds:Ljavafx/geometry/Rectangle2D;

    move-object v5, v3

    iget-object v5, v5, Ljavafx/stage/Screen;->visualBounds:Ljavafx/geometry/Rectangle2D;

    .line 315
    invoke-virtual {v4, v5}, Ljavafx/geometry/Rectangle2D;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 318
    .end local v3    # "other":Ljavafx/stage/Screen;
    :cond_5
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public final getBounds()Ljavafx/geometry/Rectangle2D;
    .locals 2

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Screen;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Screen;->bounds:Ljavafx/geometry/Rectangle2D;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Screen;
    return-object v0
.end method

.method public final getDpi()D
    .locals 3

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Screen;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/stage/Screen;->dpi:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/stage/Screen;
    return-wide v0
.end method

.method public final getVisualBounds()Ljavafx/geometry/Rectangle2D;
    .locals 2

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Screen;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Screen;->visualBounds:Ljavafx/geometry/Rectangle2D;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Screen;
    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 297
    move-object v1, p0

    .local v1, "this":Ljavafx/stage/Screen;
    const-wide/16 v4, 0x7

    move-wide v2, v4

    .line 298
    .local v2, "bits":J
    const-wide/16 v4, 0x25

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Ljavafx/stage/Screen;->bounds:Ljavafx/geometry/Rectangle2D;

    invoke-virtual {v6}, Ljavafx/geometry/Rectangle2D;->hashCode()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 299
    const-wide/16 v4, 0x25

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Ljavafx/stage/Screen;->visualBounds:Ljavafx/geometry/Rectangle2D;

    invoke-virtual {v6}, Ljavafx/geometry/Rectangle2D;->hashCode()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 300
    const-wide/16 v4, 0x25

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/stage/Screen;->dpi:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 301
    const-wide/16 v4, 0x25

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget v6, v6, Ljavafx/stage/Screen;->renderScale:F

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 302
    move-wide v4, v2

    move-wide v6, v2

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    move v1, v4

    .end local v1    # "this":Ljavafx/stage/Screen;
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Screen;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-super {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bounds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/Screen;->bounds:Ljavafx/geometry/Rectangle2D;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " visualBounds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/Screen;->visualBounds:Ljavafx/geometry/Rectangle2D;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dpi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/stage/Screen;->dpi:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " renderScale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Ljavafx/stage/Screen;->renderScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Screen;
    return-object v0
.end method
