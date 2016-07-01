.class public final Lcom/sun/glass/ui/Screen;
.super Ljava/lang/Object;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/Screen$EventHandler;
    }
.end annotation


# static fields
.field private static final dpiOverride:I

.field private static eventHandler:Lcom/sun/glass/ui/Screen$EventHandler;

.field private static volatile screens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/glass/ui/Screen;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile adapter:I

.field private final depth:I

.field private final height:I

.field private volatile ptr:J

.field private final renderScale:F

.field private final resolutionX:I

.field private final resolutionY:I

.field private final uiScale:F

.field private final visibleHeight:I

.field private final visibleWidth:I

.field private final visibleX:I

.field private final visibleY:I

.field private final width:I

.field private final x:I

.field private final y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/glass/ui/Screen;->screens:Ljava/util/List;

    .line 43
    invoke-static {}, Lcom/sun/glass/ui/Screen$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/sun/glass/ui/Screen;->dpiOverride:I

    .line 44
    return-void
.end method

.method protected constructor <init>(JIIIIIIIIIIIF)V
    .locals 31

    .prologue
    .line 118
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Screen;
    move-wide/from16 v1, p1

    .local v1, "nativePtr":J
    move/from16 v3, p3

    .local v3, "depth":I
    move/from16 v4, p4

    .local v4, "x":I
    move/from16 v5, p5

    .local v5, "y":I
    move/from16 v6, p6

    .local v6, "width":I
    move/from16 v7, p7

    .local v7, "height":I
    move/from16 v8, p8

    .local v8, "visibleX":I
    move/from16 v9, p9

    .local v9, "visibleY":I
    move/from16 v10, p10

    .local v10, "visibleWidth":I
    move/from16 v11, p11

    .local v11, "visibleHeight":I
    move/from16 v12, p12

    .local v12, "resolutionX":I
    move/from16 v13, p13

    .local v13, "resolutionY":I
    move/from16 v14, p14

    .local v14, "renderScale":F
    move-object v15, v0

    move-wide/from16 v16, v1

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v27, v12

    move/from16 v28, v13

    const/high16 v29, 0x3f800000    # 1.0f

    move/from16 v30, v14

    invoke-direct/range {v15 .. v30}, Lcom/sun/glass/ui/Screen;-><init>(JIIIIIIIIIIIFF)V

    .line 123
    return-void
.end method

.method protected constructor <init>(JIIIIIIIIIIIFF)V
    .locals 25

    .prologue
    .line 144
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/glass/ui/Screen;
    move-wide/from16 v4, p1

    .local v4, "nativePtr":J
    move/from16 v6, p3

    .local v6, "depth":I
    move/from16 v7, p4

    .local v7, "x":I
    move/from16 v8, p5

    .local v8, "y":I
    move/from16 v9, p6

    .local v9, "width":I
    move/from16 v10, p7

    .local v10, "height":I
    move/from16 v11, p8

    .local v11, "visibleX":I
    move/from16 v12, p9

    .local v12, "visibleY":I
    move/from16 v13, p10

    .local v13, "visibleWidth":I
    move/from16 v14, p11

    .local v14, "visibleHeight":I
    move/from16 v15, p12

    .local v15, "resolutionX":I
    move/from16 v16, p13

    .local v16, "resolutionY":I
    move/from16 v17, p14

    .local v17, "uiScale":F
    move/from16 v18, p15

    .local v18, "renderScale":F
    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    .line 145
    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/sun/glass/ui/Screen;->ptr:J

    .line 147
    move-object/from16 v19, v3

    move/from16 v20, v6

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/glass/ui/Screen;->depth:I

    .line 149
    move-object/from16 v19, v3

    move/from16 v20, v7

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/glass/ui/Screen;->x:I

    .line 150
    move-object/from16 v19, v3

    move/from16 v20, v8

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/glass/ui/Screen;->y:I

    .line 151
    move-object/from16 v19, v3

    move/from16 v20, v9

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/glass/ui/Screen;->width:I

    .line 152
    move-object/from16 v19, v3

    move/from16 v20, v10

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/glass/ui/Screen;->height:I

    .line 154
    move-object/from16 v19, v3

    move/from16 v20, v11

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/glass/ui/Screen;->visibleX:I

    .line 155
    move-object/from16 v19, v3

    move/from16 v20, v12

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/glass/ui/Screen;->visibleY:I

    .line 156
    move-object/from16 v19, v3

    move/from16 v20, v13

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/glass/ui/Screen;->visibleWidth:I

    .line 157
    move-object/from16 v19, v3

    move/from16 v20, v14

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/glass/ui/Screen;->visibleHeight:I

    .line 159
    sget v19, Lcom/sun/glass/ui/Screen;->dpiOverride:I

    if-lez v19, :cond_0

    .line 160
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    sget v21, Lcom/sun/glass/ui/Screen;->dpiOverride:I

    move-object/from16 v23, v20

    move/from16 v24, v21

    move/from16 v20, v24

    move-object/from16 v21, v23

    move/from16 v22, v24

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sun/glass/ui/Screen;->resolutionY:I

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/glass/ui/Screen;->resolutionX:I

    .line 166
    :goto_0
    move-object/from16 v19, v3

    move/from16 v20, v17

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/glass/ui/Screen;->uiScale:F

    .line 167
    move-object/from16 v19, v3

    move/from16 v20, v18

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/glass/ui/Screen;->renderScale:F

    .line 168
    return-void

    .line 162
    :cond_0
    move-object/from16 v19, v3

    move/from16 v20, v15

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/glass/ui/Screen;->resolutionX:I

    .line 163
    move-object/from16 v19, v3

    move/from16 v20, v16

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/glass/ui/Screen;->resolutionY:I

    goto :goto_0
.end method

.method static synthetic access$lambda$0()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/Screen;->lambda$static$3()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private dispose()V
    .locals 4

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Screen;
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/glass/ui/Screen;->ptr:J

    .line 274
    return-void
.end method

.method public static getMainScreen()Lcom/sun/glass/ui/Screen;
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getScreens()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/Screen;

    return-object v0
.end method

.method public static getScreens()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/glass/ui/Screen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lcom/sun/glass/ui/Screen;->screens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/RuntimeException;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "Internal graphics not initialized yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    sget-object v0, Lcom/sun/glass/ui/Screen;->screens:Ljava/util/List;

    return-object v0
.end method

.method public static getVideoRefreshPeriod()D
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 53
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/Application;->staticScreen_getVideoRefreshPeriod()D

    move-result-wide v0

    return-wide v0
.end method

.method static initScreens()V
    .locals 5

    .prologue
    .line 327
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 328
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/glass/ui/Application;->staticScreen_getScreens()[Lcom/sun/glass/ui/Screen;

    move-result-object v1

    move-object v0, v1

    .line 329
    .local v0, "newScreens":[Lcom/sun/glass/ui/Screen;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 330
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Internal graphics failed to initialize"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/sun/glass/ui/Screen;->screens:Ljava/util/List;

    .line 333
    return-void
.end method

.method private static synthetic lambda$static$3()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 43
    const-string v0, "com.sun.javafx.screenDPI"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static notifySettingsChanged()V
    .locals 12

    .prologue
    .line 294
    sget-object v8, Lcom/sun/glass/ui/Screen;->screens:Ljava/util/List;

    move-object v1, v8

    .line 297
    .local v1, "oldScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Screen;>;"
    invoke-static {}, Lcom/sun/glass/ui/Screen;->initScreens()V

    .line 299
    sget-object v8, Lcom/sun/glass/ui/Screen;->eventHandler:Lcom/sun/glass/ui/Screen$EventHandler;

    if-eqz v8, :cond_0

    .line 300
    sget-object v8, Lcom/sun/glass/ui/Screen;->eventHandler:Lcom/sun/glass/ui/Screen$EventHandler;

    invoke-virtual {v8}, Lcom/sun/glass/ui/Screen$EventHandler;->handleSettingsChanged()V

    .line 307
    :cond_0
    invoke-static {}, Lcom/sun/glass/ui/Window;->getWindows()Ljava/util/List;

    move-result-object v8

    move-object v2, v8

    .line 308
    .local v2, "windows":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Window;>;"
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_0
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/glass/ui/Window;

    move-object v4, v8

    .line 309
    .local v4, "w":Lcom/sun/glass/ui/Window;
    move-object v8, v4

    invoke-virtual {v8}, Lcom/sun/glass/ui/Window;->getScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v8

    move-object v5, v8

    .line 310
    .local v5, "oldScreen":Lcom/sun/glass/ui/Screen;
    sget-object v8, Lcom/sun/glass/ui/Screen;->screens:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_1
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/glass/ui/Screen;

    move-object v7, v8

    .line 311
    .local v7, "newScreen":Lcom/sun/glass/ui/Screen;
    move-object v8, v5

    invoke-virtual {v8}, Lcom/sun/glass/ui/Screen;->getNativeScreen()J

    move-result-wide v8

    move-object v10, v7

    invoke-virtual {v10}, Lcom/sun/glass/ui/Screen;->getNativeScreen()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 312
    move-object v8, v4

    move-object v9, v7

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/Window;->setScreen(Lcom/sun/glass/ui/Screen;)V

    .line 313
    .line 316
    .end local v7    # "newScreen":Lcom/sun/glass/ui/Screen;
    :cond_1
    goto :goto_0

    .line 315
    .restart local v7    # "newScreen":Lcom/sun/glass/ui/Screen;
    :cond_2
    goto :goto_1

    .line 319
    .end local v4    # "w":Lcom/sun/glass/ui/Window;
    .end local v5    # "oldScreen":Lcom/sun/glass/ui/Screen;
    .end local v7    # "newScreen":Lcom/sun/glass/ui/Screen;
    :cond_3
    move-object v8, v1

    if-eqz v8, :cond_4

    .line 320
    move-object v8, v1

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_2
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/glass/ui/Screen;

    move-object v4, v8

    .line 321
    .local v4, "screen":Lcom/sun/glass/ui/Screen;
    move-object v8, v4

    invoke-direct {v8}, Lcom/sun/glass/ui/Screen;->dispose()V

    .line 322
    goto :goto_2

    .line 324
    .end local v4    # "screen":Lcom/sun/glass/ui/Screen;
    :cond_4
    return-void
.end method

.method public static setEventHandler(Lcom/sun/glass/ui/Screen$EventHandler;)V
    .locals 2

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "eh":Lcom/sun/glass/ui/Screen$EventHandler;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 286
    move-object v1, v0

    sput-object v1, Lcom/sun/glass/ui/Screen;->eventHandler:Lcom/sun/glass/ui/Screen$EventHandler;

    .line 287
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 355
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Screen;
    move-object v2, p1

    .local v2, "o":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 373
    .end local v1    # "this":Lcom/sun/glass/ui/Screen;
    :goto_0
    return v1

    .line 356
    .restart local v1    # "this":Lcom/sun/glass/ui/Screen;
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_2

    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 358
    :cond_2
    move-object v4, v2

    check-cast v4, Lcom/sun/glass/ui/Screen;

    move-object v3, v4

    .line 359
    .local v3, "screen":Lcom/sun/glass/ui/Screen;
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/Screen;->ptr:J

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/glass/ui/Screen;->ptr:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->adapter:I

    move-object v5, v3

    iget v5, v5, Lcom/sun/glass/ui/Screen;->adapter:I

    if-ne v4, v5, :cond_3

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->depth:I

    move-object v5, v3

    iget v5, v5, Lcom/sun/glass/ui/Screen;->depth:I

    if-ne v4, v5, :cond_3

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->x:I

    move-object v5, v3

    iget v5, v5, Lcom/sun/glass/ui/Screen;->x:I

    if-ne v4, v5, :cond_3

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->y:I

    move-object v5, v3

    iget v5, v5, Lcom/sun/glass/ui/Screen;->y:I

    if-ne v4, v5, :cond_3

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->width:I

    move-object v5, v3

    iget v5, v5, Lcom/sun/glass/ui/Screen;->width:I

    if-ne v4, v5, :cond_3

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->height:I

    move-object v5, v3

    iget v5, v5, Lcom/sun/glass/ui/Screen;->height:I

    if-ne v4, v5, :cond_3

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->visibleX:I

    move-object v5, v3

    iget v5, v5, Lcom/sun/glass/ui/Screen;->visibleX:I

    if-ne v4, v5, :cond_3

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->visibleY:I

    move-object v5, v3

    iget v5, v5, Lcom/sun/glass/ui/Screen;->visibleY:I

    if-ne v4, v5, :cond_3

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->visibleWidth:I

    move-object v5, v3

    iget v5, v5, Lcom/sun/glass/ui/Screen;->visibleWidth:I

    if-ne v4, v5, :cond_3

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->visibleHeight:I

    move-object v5, v3

    iget v5, v5, Lcom/sun/glass/ui/Screen;->visibleHeight:I

    if-ne v4, v5, :cond_3

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->resolutionX:I

    move-object v5, v3

    iget v5, v5, Lcom/sun/glass/ui/Screen;->resolutionX:I

    if-ne v4, v5, :cond_3

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->resolutionY:I

    move-object v5, v3

    iget v5, v5, Lcom/sun/glass/ui/Screen;->resolutionY:I

    if-ne v4, v5, :cond_3

    move-object v4, v3

    iget v4, v4, Lcom/sun/glass/ui/Screen;->uiScale:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/glass/ui/Screen;->uiScale:F

    .line 372
    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_3

    move-object v4, v3

    iget v4, v4, Lcom/sun/glass/ui/Screen;->renderScale:F

    move-object v5, v1

    iget v5, v5, Lcom/sun/glass/ui/Screen;->renderScale:F

    .line 373
    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    move v1, v4

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getAdapterOrdinal()I
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Screen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Screen;->adapter:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Screen;
    return v0
.end method

.method public getDepth()I
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Screen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Screen;->depth:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Screen;
    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Screen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Screen;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Screen;
    return v0
.end method

.method public getNativeScreen()J
    .locals 3

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Screen;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/glass/ui/Screen;->ptr:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Screen;
    return-wide v0
.end method

.method public getRenderScale()F
    .locals 2

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Screen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Screen;->renderScale:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Screen;
    return v0
.end method

.method public getResolutionX()I
    .locals 2

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Screen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Screen;->resolutionX:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Screen;
    return v0
.end method

.method public getResolutionY()I
    .locals 2

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Screen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Screen;->resolutionY:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Screen;
    return v0
.end method

.method public getUIScale()F
    .locals 2

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Screen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Screen;->uiScale:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Screen;
    return v0
.end method

.method public getVisibleHeight()I
    .locals 2

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Screen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Screen;->visibleHeight:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Screen;
    return v0
.end method

.method public getVisibleWidth()I
    .locals 2

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Screen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Screen;->visibleWidth:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Screen;
    return v0
.end method

.method public getVisibleX()I
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Screen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Screen;->visibleX:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Screen;
    return v0
.end method

.method public getVisibleY()I
    .locals 2

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Screen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Screen;->visibleY:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Screen;
    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Screen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Screen;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Screen;
    return v0
.end method

.method public getX()I
    .locals 2

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Screen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Screen;->x:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Screen;
    return v0
.end method

.method public getY()I
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Screen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Screen;->y:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Screen;
    return v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 377
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Screen;
    const/16 v3, 0x11

    move v2, v3

    .line 378
    .local v2, "result":I
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/Screen;->ptr:J

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/glass/ui/Screen;->ptr:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 379
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->adapter:I

    add-int/2addr v3, v4

    move v2, v3

    .line 380
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->depth:I

    add-int/2addr v3, v4

    move v2, v3

    .line 381
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->x:I

    add-int/2addr v3, v4

    move v2, v3

    .line 382
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->y:I

    add-int/2addr v3, v4

    move v2, v3

    .line 383
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->width:I

    add-int/2addr v3, v4

    move v2, v3

    .line 384
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->height:I

    add-int/2addr v3, v4

    move v2, v3

    .line 385
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->visibleX:I

    add-int/2addr v3, v4

    move v2, v3

    .line 386
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->visibleY:I

    add-int/2addr v3, v4

    move v2, v3

    .line 387
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->visibleWidth:I

    add-int/2addr v3, v4

    move v2, v3

    .line 388
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->visibleHeight:I

    add-int/2addr v3, v4

    move v2, v3

    .line 389
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->resolutionX:I

    add-int/2addr v3, v4

    move v2, v3

    .line 390
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->resolutionY:I

    add-int/2addr v3, v4

    move v2, v3

    .line 391
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->uiScale:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->uiScale:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    move v2, v3

    .line 392
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->renderScale:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/Screen;->renderScale:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    :goto_1
    add-int/2addr v3, v4

    move v2, v3

    .line 393
    move v3, v2

    move v1, v3

    .end local v1    # "this":Lcom/sun/glass/ui/Screen;
    return v1

    .line 391
    .restart local v1    # "this":Lcom/sun/glass/ui/Screen;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 392
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setAdapterOrdinal(I)V
    .locals 4

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Screen;
    move v1, p1

    .local v1, "adapter":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/glass/ui/Screen;->adapter:I

    .line 282
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Screen;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen:\n    ptr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 337
    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getNativeScreen()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    adapter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 338
    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getAdapterOrdinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    depth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 339
    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getDepth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 340
    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 341
    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 342
    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 343
    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    visibleX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 344
    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getVisibleX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    visibleY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 345
    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getVisibleY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    visibleWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 346
    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getVisibleWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    visibleHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 347
    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getVisibleHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    uiScale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 348
    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getUIScale()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    RenderScale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 349
    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getRenderScale()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    resolutionX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 350
    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getResolutionX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    resolutionY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 351
    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getResolutionY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Screen;
    return-object v0
.end method
