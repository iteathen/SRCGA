.class Lcom/sun/glass/ui/monocle/TouchInput;
.super Ljava/lang/Object;
.source "TouchInput.java"


# static fields
.field private static instance:Lcom/sun/glass/ui/monocle/TouchInput;


# instance fields
.field private basePipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

.field private final gestures:Lcom/sun/glass/ui/GestureSupport;

.field private state:Lcom/sun/glass/ui/monocle/TouchState;

.field private final touchRadius:I

.field private final touches:Lcom/sun/glass/ui/TouchInputSupport;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/sun/glass/ui/monocle/TouchInput;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/TouchInput;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/monocle/TouchInput;->instance:Lcom/sun/glass/ui/monocle/TouchInput;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchInput;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v1, v0

    invoke-static {}, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v2

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/sun/glass/ui/monocle/TouchInput;->touchRadius:I

    .line 57
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/monocle/TouchState;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/TouchState;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/TouchInput;->state:Lcom/sun/glass/ui/monocle/TouchState;

    .line 58
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/GestureSupport;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/GestureSupport;-><init>(Z)V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/TouchInput;->gestures:Lcom/sun/glass/ui/GestureSupport;

    .line 59
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/TouchInputSupport;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/TouchInput;->gestures:Lcom/sun/glass/ui/GestureSupport;

    .line 60
    invoke-virtual {v4}, Lcom/sun/glass/ui/GestureSupport;->createTouchCountListener()Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/TouchInputSupport;-><init>(Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;Z)V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/TouchInput;->touches:Lcom/sun/glass/ui/TouchInputSupport;

    .line 67
    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/monocle/TouchInput;->lambda$new$79()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/monocle/TouchInput;->lambda$getBasePipeline$80()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/sun/glass/ui/monocle/TouchInput;Lcom/sun/glass/ui/View;[ILcom/sun/glass/ui/Window;[I[I[I)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sun/glass/ui/monocle/TouchInput;->lambda$postPoints$81(Lcom/sun/glass/ui/View;[ILcom/sun/glass/ui/Window;[I[I[I)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/glass/ui/monocle/TouchInput;Lcom/sun/glass/ui/View;Lcom/sun/glass/ui/Window;IIII)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sun/glass/ui/monocle/TouchInput;->lambda$postPoint$82(Lcom/sun/glass/ui/View;Lcom/sun/glass/ui/Window;IIII)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/glass/ui/monocle/TouchInput;Lcom/sun/glass/ui/View;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/TouchInput;->lambda$postNoPoints$83(Lcom/sun/glass/ui/View;)V

    return-void
.end method

.method private countEvents(Lcom/sun/glass/ui/monocle/TouchState;)I
    .locals 8

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchInput;
    move-object v1, p1

    .local v1, "newState":Lcom/sun/glass/ui/monocle/TouchState;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/TouchInput;->state:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v6

    move v2, v6

    .line 291
    .local v2, "count":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 292
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v6

    move-object v4, v6

    .line 293
    .local v4, "newPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/TouchInput;->state:Lcom/sun/glass/ui/monocle/TouchState;

    move-object v7, v4

    iget v7, v7, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/monocle/TouchState;->getPointForID(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v6

    move-object v5, v6

    .line 294
    .local v5, "oldPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v6, v5

    if-nez v6, :cond_0

    .line 295
    add-int/lit8 v2, v2, 0x1

    .line 291
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 298
    .end local v4    # "newPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    .end local v5    # "oldPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    :cond_1
    move v6, v2

    move v0, v6

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/TouchInput;
    return v0
.end method

.method private dispatchPoint(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/View;IIII)V
    .locals 16

    .prologue
    .line 131
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchInput;
    move-object/from16 v1, p1

    .local v1, "window":Lcom/sun/glass/ui/Window;
    move-object/from16 v2, p2

    .local v2, "view":Lcom/sun/glass/ui/View;
    move/from16 v3, p3

    .local v3, "state":I
    move/from16 v4, p4

    .local v4, "id":I
    move/from16 v5, p5

    .local v5, "x":I
    move/from16 v6, p6

    .local v6, "y":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/TouchInput;->touches:Lcom/sun/glass/ui/TouchInputSupport;

    move-object v8, v2

    move v9, v3

    move v10, v4

    int-to-long v10, v10

    move v12, v5

    move-object v13, v1

    .line 132
    invoke-virtual {v13}, Lcom/sun/glass/ui/Window;->getX()I

    move-result v13

    sub-int/2addr v12, v13

    move v13, v6

    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/glass/ui/Window;->getY()I

    move-result v14

    sub-int/2addr v13, v14

    move v14, v5

    move v15, v6

    .line 131
    invoke-virtual/range {v7 .. v15}, Lcom/sun/glass/ui/TouchInputSupport;->notifyNextTouchEvent(Lcom/sun/glass/ui/View;IJIIII)V

    .line 134
    return-void
.end method

.method static getInstance()Lcom/sun/glass/ui/monocle/TouchInput;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/sun/glass/ui/monocle/TouchInput;->instance:Lcom/sun/glass/ui/monocle/TouchInput;

    return-object v0
.end method

.method private static synthetic lambda$getBasePipeline$80()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    const-string v0, "monocle.input.touchFilters"

    const-string v1, "SmallMove"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$new$79()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 50
    const-string v0, "monocle.input.touchRadius"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$postNoPoints$83(Lcom/sun/glass/ui/View;)V
    .locals 7

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchInput;
    move-object v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/TouchInput;->touches:Lcom/sun/glass/ui/TouchInputSupport;

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/glass/ui/TouchInputSupport;->notifyBeginTouchEvent(Lcom/sun/glass/ui/View;IZI)V

    .line 163
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/TouchInput;->touches:Lcom/sun/glass/ui/TouchInputSupport;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/TouchInputSupport;->notifyEndTouchEvent(Lcom/sun/glass/ui/View;)V

    .line 164
    return-void
.end method

.method private synthetic lambda$postPoint$82(Lcom/sun/glass/ui/View;Lcom/sun/glass/ui/Window;IIII)V
    .locals 14

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchInput;
    move-object v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move-object/from16 v2, p2

    .local v2, "window":Lcom/sun/glass/ui/Window;
    move/from16 v3, p3

    .local v3, "state":I
    move/from16 v4, p4

    .local v4, "id":I
    move/from16 v5, p5

    .local v5, "x":I
    move/from16 v6, p6

    .local v6, "y":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/TouchInput;->touches:Lcom/sun/glass/ui/TouchInputSupport;

    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/glass/ui/TouchInputSupport;->notifyBeginTouchEvent(Lcom/sun/glass/ui/View;IZI)V

    .line 155
    move-object v7, v0

    move-object v8, v2

    move-object v9, v1

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sun/glass/ui/monocle/TouchInput;->dispatchPoint(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/View;IIII)V

    .line 156
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/TouchInput;->touches:Lcom/sun/glass/ui/TouchInputSupport;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/sun/glass/ui/TouchInputSupport;->notifyEndTouchEvent(Lcom/sun/glass/ui/View;)V

    .line 157
    return-void
.end method

.method private synthetic lambda$postPoints$81(Lcom/sun/glass/ui/View;[ILcom/sun/glass/ui/Window;[I[I[I)V
    .locals 16

    .prologue
    .line 139
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchInput;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move-object/from16 v2, p2

    .local v2, "states":[I
    move-object/from16 v3, p3

    .local v3, "window":Lcom/sun/glass/ui/Window;
    move-object/from16 v4, p4

    .local v4, "ids":[I
    move-object/from16 v5, p5

    .local v5, "xs":[I
    move-object/from16 v6, p6

    .local v6, "ys":[I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/TouchInput;->touches:Lcom/sun/glass/ui/TouchInputSupport;

    move-object v9, v1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v12, v2

    array-length v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/glass/ui/TouchInputSupport;->notifyBeginTouchEvent(Lcom/sun/glass/ui/View;IZI)V

    .line 140
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_0
    move v8, v7

    move-object v9, v2

    array-length v9, v9

    if-ge v8, v9, :cond_0

    .line 141
    move-object v8, v0

    move-object v9, v3

    move-object v10, v1

    move-object v11, v2

    move v12, v7

    aget v11, v11, v12

    move-object v12, v4

    move v13, v7

    aget v12, v12, v13

    move-object v13, v5

    move v14, v7

    aget v13, v13, v14

    move-object v14, v6

    move v15, v7

    aget v14, v14, v15

    invoke-direct/range {v8 .. v14}, Lcom/sun/glass/ui/monocle/TouchInput;->dispatchPoint(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/View;IIII)V

    .line 140
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 144
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/TouchInput;->touches:Lcom/sun/glass/ui/TouchInputSupport;

    move-object v9, v1

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/TouchInputSupport;->notifyEndTouchEvent(Lcom/sun/glass/ui/View;)V

    .line 145
    return-void
.end method

.method private postNoPoints(Lcom/sun/glass/ui/View;)V
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchInput;
    move-object v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$5;->lambdaFactory$(Lcom/sun/glass/ui/monocle/TouchInput;Lcom/sun/glass/ui/View;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->runLater(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method private postPoint(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/View;ILcom/sun/glass/ui/monocle/TouchState$Point;)V
    .locals 15

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchInput;
    move-object/from16 v1, p1

    .local v1, "window":Lcom/sun/glass/ui/Window;
    move-object/from16 v2, p2

    .local v2, "view":Lcom/sun/glass/ui/View;
    move/from16 v3, p3

    .local v3, "state":I
    move-object/from16 v4, p4

    .local v4, "p":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v8, v4

    iget v8, v8, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    move v5, v8

    .line 151
    .local v5, "id":I
    move-object v8, v4

    iget v8, v8, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    move v6, v8

    .line 152
    .local v6, "x":I
    move-object v8, v4

    iget v8, v8, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    move v7, v8

    .line 153
    .local v7, "y":I
    move-object v8, v0

    move-object v9, v2

    move-object v10, v1

    move v11, v3

    move v12, v5

    move v13, v6

    move v14, v7

    invoke-static/range {v8 .. v14}, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$4;->lambdaFactory$(Lcom/sun/glass/ui/monocle/TouchInput;Lcom/sun/glass/ui/View;Lcom/sun/glass/ui/Window;IIII)Ljava/lang/Runnable;

    move-result-object v8

    invoke-static {v8}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->runLater(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method private postPoints(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/View;[I[I[I[I)V
    .locals 14

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchInput;
    move-object v1, p1

    .local v1, "window":Lcom/sun/glass/ui/Window;
    move-object/from16 v2, p2

    .local v2, "view":Lcom/sun/glass/ui/View;
    move-object/from16 v3, p3

    .local v3, "states":[I
    move-object/from16 v4, p4

    .local v4, "ids":[I
    move-object/from16 v5, p5

    .local v5, "xs":[I
    move-object/from16 v6, p6

    .local v6, "ys":[I
    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    move-object v10, v1

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$3;->lambdaFactory$(Lcom/sun/glass/ui/monocle/TouchInput;Lcom/sun/glass/ui/View;[ILcom/sun/glass/ui/Window;[I[I[I)Ljava/lang/Runnable;

    move-result-object v7

    invoke-static {v7}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->runLater(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method

.method private postTouchEvent(Lcom/sun/glass/ui/monocle/MonocleWindow;Lcom/sun/glass/ui/View;Lcom/sun/glass/ui/monocle/TouchState;)V
    .locals 20

    .prologue
    .line 212
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchInput;
    move-object/from16 v1, p1

    .local v1, "window":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object/from16 v2, p2

    .local v2, "view":Lcom/sun/glass/ui/View;
    move-object/from16 v3, p3

    .local v3, "newState":Lcom/sun/glass/ui/monocle/TouchState;
    move-object v13, v0

    move-object v14, v3

    invoke-direct {v13, v14}, Lcom/sun/glass/ui/monocle/TouchInput;->countEvents(Lcom/sun/glass/ui/monocle/TouchState;)I

    move-result v13

    move v4, v13

    .line 213
    .local v4, "count":I
    move v13, v4

    packed-switch v13, :pswitch_data_0

    .line 239
    move v13, v4

    new-array v13, v13, [I

    move-object v5, v13

    .line 240
    .local v5, "states":[I
    move v13, v4

    new-array v13, v13, [I

    move-object v6, v13

    .line 241
    .local v6, "ids":[I
    move v13, v4

    new-array v13, v13, [I

    move-object v7, v13

    .line 242
    .local v7, "xs":[I
    move v13, v4

    new-array v13, v13, [I

    move-object v8, v13

    .line 243
    .local v8, "ys":[I
    const/4 v13, 0x0

    move v9, v13

    .local v9, "i":I
    :goto_0
    move v13, v9

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/glass/ui/monocle/TouchInput;->state:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v14}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v14

    if-ge v13, v14, :cond_5

    .line 244
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/glass/ui/monocle/TouchInput;->state:Lcom/sun/glass/ui/monocle/TouchState;

    move v14, v9

    invoke-virtual {v13, v14}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v13

    move-object v10, v13

    .line 245
    .local v10, "oldPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v13, v3

    move-object v14, v10

    iget v14, v14, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    invoke-virtual {v13, v14}, Lcom/sun/glass/ui/monocle/TouchState;->getPointForID(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v13

    move-object v11, v13

    .line 247
    .local v11, "newPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v13, v11

    if-eqz v13, :cond_4

    .line 248
    move-object v13, v6

    move v14, v9

    move-object v15, v11

    iget v15, v15, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    aput v15, v13, v14

    .line 249
    move-object v13, v7

    move v14, v9

    move-object v15, v11

    iget v15, v15, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    aput v15, v13, v14

    .line 250
    move-object v13, v8

    move v14, v9

    move-object v15, v11

    iget v15, v15, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    aput v15, v13, v14

    .line 251
    move-object v13, v11

    iget v13, v13, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    move-object v14, v10

    iget v14, v14, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    if-ne v13, v14, :cond_3

    move-object v13, v11

    iget v13, v13, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    move-object v14, v10

    iget v14, v14, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    if-ne v13, v14, :cond_3

    .line 253
    move-object v13, v5

    move v14, v9

    const/16 v15, 0x32e

    aput v15, v13, v14

    .line 243
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 215
    .end local v5    # "states":[I
    .end local v6    # "ids":[I
    .end local v7    # "xs":[I
    .end local v8    # "ys":[I
    .end local v9    # "i":I
    .end local v10    # "oldPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    .end local v11    # "newPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    :pswitch_0
    move-object v13, v0

    move-object v14, v2

    invoke-direct {v13, v14}, Lcom/sun/glass/ui/monocle/TouchInput;->postNoPoints(Lcom/sun/glass/ui/View;)V

    .line 216
    .line 282
    :goto_2
    return-void

    .line 218
    :pswitch_1
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/glass/ui/monocle/TouchInput;->state:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v13}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 220
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/glass/ui/monocle/TouchInput;->state:Lcom/sun/glass/ui/monocle/TouchState;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v13

    move-object v5, v13

    .line 221
    .local v5, "oldPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v13, v3

    move-object v14, v5

    iget v14, v14, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    invoke-virtual {v13, v14}, Lcom/sun/glass/ui/monocle/TouchState;->getPointForID(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v13

    move-object v6, v13

    .line 223
    .local v6, "newPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v13, v6

    if-eqz v13, :cond_1

    .line 224
    move-object v13, v6

    iget v13, v13, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    move-object v14, v5

    iget v14, v14, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    if-ne v13, v14, :cond_0

    move-object v13, v6

    iget v13, v13, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    move-object v14, v5

    iget v14, v14, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    if-ne v13, v14, :cond_0

    .line 226
    move-object v13, v0

    move-object v14, v1

    move-object v15, v2

    const/16 v16, 0x32e

    move-object/from16 v17, v6

    invoke-direct/range {v13 .. v17}, Lcom/sun/glass/ui/monocle/TouchInput;->postPoint(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/View;ILcom/sun/glass/ui/monocle/TouchState$Point;)V

    .line 233
    :goto_3
    goto :goto_2

    .line 228
    :cond_0
    move-object v13, v0

    move-object v14, v1

    move-object v15, v2

    const/16 v16, 0x32c

    move-object/from16 v17, v6

    invoke-direct/range {v13 .. v17}, Lcom/sun/glass/ui/monocle/TouchInput;->postPoint(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/View;ILcom/sun/glass/ui/monocle/TouchState$Point;)V

    goto :goto_3

    .line 231
    :cond_1
    move-object v13, v0

    move-object v14, v1

    move-object v15, v2

    const/16 v16, 0x32d

    move-object/from16 v17, v5

    invoke-direct/range {v13 .. v17}, Lcom/sun/glass/ui/monocle/TouchInput;->postPoint(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/View;ILcom/sun/glass/ui/monocle/TouchState$Point;)V

    goto :goto_3

    .line 235
    .end local v5    # "oldPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    .end local v6    # "newPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    :cond_2
    move-object v13, v0

    move-object v14, v1

    move-object v15, v2

    const/16 v16, 0x32b

    move-object/from16 v17, v3

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v17

    invoke-direct/range {v13 .. v17}, Lcom/sun/glass/ui/monocle/TouchInput;->postPoint(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/View;ILcom/sun/glass/ui/monocle/TouchState$Point;)V

    .line 237
    goto :goto_2

    .line 255
    .local v5, "states":[I
    .local v6, "ids":[I
    .restart local v7    # "xs":[I
    .restart local v8    # "ys":[I
    .restart local v9    # "i":I
    .restart local v10    # "oldPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    .restart local v11    # "newPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    :cond_3
    move-object v13, v5

    move v14, v9

    const/16 v15, 0x32c

    aput v15, v13, v14

    goto :goto_1

    .line 258
    :cond_4
    move-object v13, v5

    move v14, v9

    const/16 v15, 0x32d

    aput v15, v13, v14

    .line 259
    move-object v13, v6

    move v14, v9

    move-object v15, v10

    iget v15, v15, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    aput v15, v13, v14

    .line 260
    move-object v13, v7

    move v14, v9

    move-object v15, v10

    iget v15, v15, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    aput v15, v13, v14

    .line 261
    move-object v13, v8

    move v14, v9

    move-object v15, v10

    iget v15, v15, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    aput v15, v13, v14

    goto/16 :goto_1

    .line 266
    .end local v10    # "oldPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    .end local v11    # "newPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    :cond_5
    const/4 v13, 0x0

    move v9, v13

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/glass/ui/monocle/TouchInput;->state:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v13}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v13

    move v10, v13

    .line 267
    .local v10, "j":I
    :goto_4
    move v13, v9

    move-object v14, v3

    invoke-virtual {v14}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v14

    if-ge v13, v14, :cond_7

    .line 268
    move-object v13, v3

    move v14, v9

    invoke-virtual {v13, v14}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v13

    move-object v11, v13

    .line 269
    .restart local v11    # "newPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/glass/ui/monocle/TouchInput;->state:Lcom/sun/glass/ui/monocle/TouchState;

    move-object v14, v11

    iget v14, v14, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    invoke-virtual {v13, v14}, Lcom/sun/glass/ui/monocle/TouchState;->getPointForID(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v13

    move-object v12, v13

    .line 271
    .local v12, "oldPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v13, v12

    if-nez v13, :cond_6

    .line 272
    move-object v13, v5

    move v14, v10

    const/16 v15, 0x32b

    aput v15, v13, v14

    .line 273
    move-object v13, v6

    move v14, v10

    move-object v15, v11

    iget v15, v15, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    aput v15, v13, v14

    .line 274
    move-object v13, v7

    move v14, v10

    move-object v15, v11

    iget v15, v15, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    aput v15, v13, v14

    .line 275
    move-object v13, v8

    move v14, v10

    move-object v15, v11

    iget v15, v15, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    aput v15, v13, v14

    .line 276
    add-int/lit8 v10, v10, 0x1

    .line 267
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 279
    .end local v11    # "newPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    .end local v12    # "oldPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    :cond_7
    move-object v13, v0

    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Lcom/sun/glass/ui/monocle/TouchInput;->postPoints(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/View;[I[I[I[I)V

    goto/16 :goto_2

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private postTouchEvent(Lcom/sun/glass/ui/monocle/TouchState;I)V
    .locals 19

    .prologue
    .line 173
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchInput;
    move-object/from16 v1, p1

    .local v1, "state":Lcom/sun/glass/ui/monocle/TouchState;
    move/from16 v2, p2

    .local v2, "eventType":I
    move-object v12, v1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/sun/glass/ui/monocle/TouchState;->getWindow(ZLcom/sun/glass/ui/monocle/MonocleWindow;)Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-result-object v12

    move-object v3, v12

    .line 174
    .local v3, "window":Lcom/sun/glass/ui/Window;
    move-object v12, v3

    if-nez v12, :cond_0

    const/4 v12, 0x0

    :goto_0
    move-object v4, v12

    .line 175
    .local v4, "view":Lcom/sun/glass/ui/View;
    move-object v12, v4

    if-eqz v12, :cond_1

    .line 176
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 184
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v12

    move v5, v12

    .line 185
    .local v5, "count":I
    move v12, v5

    new-array v12, v12, [I

    move-object v6, v12

    .line 186
    .local v6, "states":[I
    move v12, v5

    new-array v12, v12, [I

    move-object v7, v12

    .line 187
    .local v7, "ids":[I
    move v12, v5

    new-array v12, v12, [I

    move-object v8, v12

    .line 188
    .local v8, "xs":[I
    move v12, v5

    new-array v12, v12, [I

    move-object v9, v12

    .line 189
    .local v9, "ys":[I
    const/4 v12, 0x0

    move v10, v12

    .local v10, "i":I
    :goto_1
    move v12, v10

    move v13, v5

    if-ge v12, v13, :cond_2

    .line 190
    move-object v12, v6

    move v13, v10

    move v14, v2

    aput v14, v12, v13

    .line 191
    move-object v12, v1

    move v13, v10

    invoke-virtual {v12, v13}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v12

    move-object v11, v12

    .line 192
    .local v11, "p":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v12, v7

    move v13, v10

    move-object v14, v11

    iget v14, v14, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    aput v14, v12, v13

    .line 193
    move-object v12, v8

    move v13, v10

    move-object v14, v11

    iget v14, v14, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    aput v14, v12, v13

    .line 194
    move-object v12, v9

    move v13, v10

    move-object v14, v11

    iget v14, v14, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    aput v14, v12, v13

    .line 189
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 174
    .end local v4    # "view":Lcom/sun/glass/ui/View;
    .end local v5    # "count":I
    .end local v6    # "states":[I
    .end local v7    # "ids":[I
    .end local v8    # "xs":[I
    .end local v9    # "ys":[I
    .end local v10    # "i":I
    .end local v11    # "p":Lcom/sun/glass/ui/monocle/TouchState$Point;
    :cond_0
    move-object v12, v3

    invoke-virtual {v12}, Lcom/sun/glass/ui/Window;->getView()Lcom/sun/glass/ui/View;

    move-result-object v12

    goto :goto_0

    .line 178
    .restart local v4    # "view":Lcom/sun/glass/ui/View;
    :pswitch_0
    move-object v12, v0

    move-object v13, v4

    invoke-direct {v12, v13}, Lcom/sun/glass/ui/monocle/TouchInput;->postNoPoints(Lcom/sun/glass/ui/View;)V

    .line 179
    .line 200
    :cond_1
    :goto_2
    return-void

    .line 181
    :pswitch_1
    move-object v12, v0

    move-object v13, v3

    move-object v14, v4

    move v15, v2

    move-object/from16 v16, v1

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v16

    invoke-direct/range {v12 .. v16}, Lcom/sun/glass/ui/monocle/TouchInput;->postPoint(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/View;ILcom/sun/glass/ui/monocle/TouchState$Point;)V

    .line 182
    goto :goto_2

    .line 196
    .restart local v5    # "count":I
    .restart local v6    # "states":[I
    .restart local v7    # "ids":[I
    .restart local v8    # "xs":[I
    .restart local v9    # "ys":[I
    .restart local v10    # "i":I
    :cond_2
    move-object v12, v0

    move-object v13, v3

    move-object v14, v4

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    invoke-direct/range {v12 .. v18}, Lcom/sun/glass/ui/monocle/TouchInput;->postPoints(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/View;[I[I[I[I)V

    goto :goto_2

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method getBasePipeline()Lcom/sun/glass/ui/monocle/TouchPipeline;
    .locals 10

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchInput;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/TouchInput;->basePipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    if-nez v6, :cond_0

    .line 72
    move-object v6, v0

    new-instance v7, Lcom/sun/glass/ui/monocle/TouchPipeline;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Lcom/sun/glass/ui/monocle/TouchPipeline;-><init>()V

    iput-object v7, v6, Lcom/sun/glass/ui/monocle/TouchInput;->basePipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    .line 73
    invoke-static {}, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$2;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v6

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, ","

    .line 77
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 78
    .local v1, "touchFilterNames":[Ljava/lang/String;
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 79
    move-object v6, v1

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 80
    .local v5, "touchFilterName":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/TouchInput;->basePipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/monocle/TouchPipeline;->addNamedFilter(Ljava/lang/String;)V

    .line 79
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "touchFilterNames":[Ljava/lang/String;
    .end local v5    # "touchFilterName":Ljava/lang/String;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/TouchInput;->basePipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/TouchInput;
    return-object v0
.end method

.method getState(Lcom/sun/glass/ui/monocle/TouchState;)V
    .locals 4

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchInput;
    move-object v1, p1

    .local v1, "result":Lcom/sun/glass/ui/monocle/TouchState;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/TouchInput;->state:Lcom/sun/glass/ui/monocle/TouchState;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/TouchState;->copyTo(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 93
    return-void
.end method

.method getTouchRadius()I
    .locals 2

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchInput;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/TouchInput;->touchRadius:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/TouchInput;
    return v0
.end method

.method setState(Lcom/sun/glass/ui/monocle/TouchState;)V
    .locals 13

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchInput;
    move-object v1, p1

    .local v1, "newState":Lcom/sun/glass/ui/monocle/TouchState;
    sget-object v7, Lcom/sun/glass/ui/monocle/MonocleSettings;->settings:Lcom/sun/glass/ui/monocle/MonocleSettings;

    iget-boolean v7, v7, Lcom/sun/glass/ui/monocle/MonocleSettings;->traceEvents:Z

    if-eqz v7, :cond_0

    .line 102
    const-string v7, "Set %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-static {v7, v8}, Lcom/sun/glass/ui/monocle/MonocleTrace;->traceEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/TouchState;->sortPointsByID()V

    .line 105
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/TouchState;->assignPrimaryID()V

    .line 108
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/TouchInput;->state:Lcom/sun/glass/ui/monocle/TouchState;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sun/glass/ui/monocle/TouchState;->getWindow(ZLcom/sun/glass/ui/monocle/MonocleWindow;)Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-result-object v7

    move-object v2, v7

    .line 109
    .local v2, "oldWindow":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/TouchInput;->state:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x1

    :goto_0
    move v3, v7

    .line 110
    .local v3, "recalculateWindow":Z
    move-object v7, v1

    move v8, v3

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/sun/glass/ui/monocle/TouchState;->getWindow(ZLcom/sun/glass/ui/monocle/MonocleWindow;)Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-result-object v7

    move-object v4, v7

    .line 111
    .local v4, "window":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object v7, v2

    if-nez v7, :cond_4

    const/4 v7, 0x0

    :goto_1
    move-object v5, v7

    .line 112
    .local v5, "oldView":Lcom/sun/glass/ui/View;
    move-object v7, v4

    if-nez v7, :cond_5

    const/4 v7, 0x0

    :goto_2
    move-object v6, v7

    .line 113
    .local v6, "view":Lcom/sun/glass/ui/View;
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/TouchInput;->state:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v7, v8}, Lcom/sun/glass/ui/monocle/TouchState;->equalsSorted(Lcom/sun/glass/ui/monocle/TouchState;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 115
    move-object v7, v6

    move-object v8, v5

    if-eq v7, v8, :cond_6

    .line 116
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/TouchInput;->state:Lcom/sun/glass/ui/monocle/TouchState;

    const/16 v9, 0x32d

    invoke-direct {v7, v8, v9}, Lcom/sun/glass/ui/monocle/TouchInput;->postTouchEvent(Lcom/sun/glass/ui/monocle/TouchState;I)V

    .line 117
    move-object v7, v0

    move-object v8, v1

    const/16 v9, 0x32b

    invoke-direct {v7, v8, v9}, Lcom/sun/glass/ui/monocle/TouchInput;->postTouchEvent(Lcom/sun/glass/ui/monocle/TouchState;I)V

    .line 123
    :cond_1
    :goto_3
    invoke-static {}, Lcom/sun/glass/ui/monocle/MouseInputSynthesizer;->getInstance()Lcom/sun/glass/ui/monocle/MouseInputSynthesizer;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/sun/glass/ui/monocle/MouseInputSynthesizer;->setState(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 125
    :cond_2
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/TouchInput;->state:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v7, v8}, Lcom/sun/glass/ui/monocle/TouchState;->copyTo(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 126
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/TouchState;->clearWindow()V

    .line 127
    return-void

    .line 109
    .end local v3    # "recalculateWindow":Z
    .end local v4    # "window":Lcom/sun/glass/ui/monocle/MonocleWindow;
    .end local v5    # "oldView":Lcom/sun/glass/ui/View;
    .end local v6    # "view":Lcom/sun/glass/ui/View;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 111
    .restart local v3    # "recalculateWindow":Z
    .restart local v4    # "window":Lcom/sun/glass/ui/monocle/MonocleWindow;
    :cond_4
    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getView()Lcom/sun/glass/ui/View;

    move-result-object v7

    goto :goto_1

    .line 112
    .restart local v5    # "oldView":Lcom/sun/glass/ui/View;
    :cond_5
    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getView()Lcom/sun/glass/ui/View;

    move-result-object v7

    goto :goto_2

    .line 119
    .restart local v6    # "view":Lcom/sun/glass/ui/View;
    :cond_6
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 120
    move-object v7, v0

    move-object v8, v4

    move-object v9, v6

    move-object v10, v1

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/glass/ui/monocle/TouchInput;->postTouchEvent(Lcom/sun/glass/ui/monocle/MonocleWindow;Lcom/sun/glass/ui/View;Lcom/sun/glass/ui/monocle/TouchState;)V

    goto :goto_3
.end method
