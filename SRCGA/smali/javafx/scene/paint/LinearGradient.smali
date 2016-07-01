.class public final Ljavafx/scene/paint/LinearGradient;
.super Ljavafx/scene/paint/Paint;
.source "LinearGradient.java"


# instance fields
.field private cycleMethod:Ljavafx/scene/paint/CycleMethod;

.field private endX:D

.field private endY:D

.field private hash:I

.field private final opaque:Z

.field private platformPaint:Ljava/lang/Object;

.field private proportional:Z

.field private startX:D

.field private startY:D

.field private stops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/paint/Stop;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(DDDDZLjavafx/scene/paint/CycleMethod;Ljava/util/List;)V
    .locals 17
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "startX"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "startY"
        .end annotation
    .end param
    .param p5    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            defaultValue = "1"
            value = "endX"
        .end annotation
    .end param
    .param p7    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            defaultValue = "1"
            value = "endY"
        .end annotation
    .end param
    .param p9    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            defaultValue = "true"
            value = "proportional"
        .end annotation
    .end param
    .param p10    # Ljavafx/scene/paint/CycleMethod;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "cycleMethod"
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "stops"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDDZ",
            "Ljavafx/scene/paint/CycleMethod;",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/paint/Stop;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/paint/LinearGradient;
    move-wide/from16 v2, p1

    .local v2, "startX":D
    move-wide/from16 v4, p3

    .local v4, "startY":D
    move-wide/from16 v6, p5

    .local v6, "endX":D
    move-wide/from16 v8, p7

    .local v8, "endY":D
    move/from16 v10, p9

    .local v10, "proportional":Z
    move-object/from16 v11, p10

    .local v11, "cycleMethod":Ljavafx/scene/paint/CycleMethod;
    move-object/from16 v12, p11

    .local v12, "stops":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/paint/Stop;>;"
    move-object v13, v1

    invoke-direct {v13}, Ljavafx/scene/paint/Paint;-><init>()V

    .line 252
    move-object v13, v1

    move-wide v14, v2

    iput-wide v14, v13, Ljavafx/scene/paint/LinearGradient;->startX:D

    .line 253
    move-object v13, v1

    move-wide v14, v4

    iput-wide v14, v13, Ljavafx/scene/paint/LinearGradient;->startY:D

    .line 254
    move-object v13, v1

    move-wide v14, v6

    iput-wide v14, v13, Ljavafx/scene/paint/LinearGradient;->endX:D

    .line 255
    move-object v13, v1

    move-wide v14, v8

    iput-wide v14, v13, Ljavafx/scene/paint/LinearGradient;->endY:D

    .line 256
    move-object v13, v1

    move v14, v10

    iput-boolean v14, v13, Ljavafx/scene/paint/LinearGradient;->proportional:Z

    .line 257
    move-object v13, v1

    move-object v14, v11

    if-nez v14, :cond_0

    sget-object v14, Ljavafx/scene/paint/CycleMethod;->NO_CYCLE:Ljavafx/scene/paint/CycleMethod;

    :goto_0
    iput-object v14, v13, Ljavafx/scene/paint/LinearGradient;->cycleMethod:Ljavafx/scene/paint/CycleMethod;

    .line 258
    move-object v13, v1

    move-object v14, v12

    invoke-static {v14}, Ljavafx/scene/paint/Stop;->normalize(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    iput-object v14, v13, Ljavafx/scene/paint/LinearGradient;->stops:Ljava/util/List;

    .line 259
    move-object v13, v1

    move-object v14, v1

    invoke-direct {v14}, Ljavafx/scene/paint/LinearGradient;->determineOpacity()Z

    move-result v14

    iput-boolean v14, v13, Ljavafx/scene/paint/LinearGradient;->opaque:Z

    .line 260
    return-void

    .line 257
    :cond_0
    move-object v14, v11

    goto :goto_0
.end method

.method public varargs constructor <init>(DDDDZLjavafx/scene/paint/CycleMethod;[Ljavafx/scene/paint/Stop;)V
    .locals 17
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "startX"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "startY"
        .end annotation
    .end param
    .param p5    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            defaultValue = "1"
            value = "endX"
        .end annotation
    .end param
    .param p7    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            defaultValue = "1"
            value = "endY"
        .end annotation
    .end param
    .param p9    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            defaultValue = "true"
            value = "proportional"
        .end annotation
    .end param
    .param p10    # Ljavafx/scene/paint/CycleMethod;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "cycleMethod"
        .end annotation
    .end param
    .param p11    # [Ljavafx/scene/paint/Stop;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "stops"
        .end annotation
    .end param

    .prologue
    .line 222
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/paint/LinearGradient;
    move-wide/from16 v2, p1

    .local v2, "startX":D
    move-wide/from16 v4, p3

    .local v4, "startY":D
    move-wide/from16 v6, p5

    .local v6, "endX":D
    move-wide/from16 v8, p7

    .local v8, "endY":D
    move/from16 v10, p9

    .local v10, "proportional":Z
    move-object/from16 v11, p10

    .local v11, "cycleMethod":Ljavafx/scene/paint/CycleMethod;
    move-object/from16 v12, p11

    .local v12, "stops":[Ljavafx/scene/paint/Stop;
    move-object v13, v1

    invoke-direct {v13}, Ljavafx/scene/paint/Paint;-><init>()V

    .line 223
    move-object v13, v1

    move-wide v14, v2

    iput-wide v14, v13, Ljavafx/scene/paint/LinearGradient;->startX:D

    .line 224
    move-object v13, v1

    move-wide v14, v4

    iput-wide v14, v13, Ljavafx/scene/paint/LinearGradient;->startY:D

    .line 225
    move-object v13, v1

    move-wide v14, v6

    iput-wide v14, v13, Ljavafx/scene/paint/LinearGradient;->endX:D

    .line 226
    move-object v13, v1

    move-wide v14, v8

    iput-wide v14, v13, Ljavafx/scene/paint/LinearGradient;->endY:D

    .line 227
    move-object v13, v1

    move v14, v10

    iput-boolean v14, v13, Ljavafx/scene/paint/LinearGradient;->proportional:Z

    .line 228
    move-object v13, v1

    move-object v14, v11

    if-nez v14, :cond_0

    sget-object v14, Ljavafx/scene/paint/CycleMethod;->NO_CYCLE:Ljavafx/scene/paint/CycleMethod;

    :goto_0
    iput-object v14, v13, Ljavafx/scene/paint/LinearGradient;->cycleMethod:Ljavafx/scene/paint/CycleMethod;

    .line 229
    move-object v13, v1

    move-object v14, v12

    invoke-static {v14}, Ljavafx/scene/paint/Stop;->normalize([Ljavafx/scene/paint/Stop;)Ljava/util/List;

    move-result-object v14

    iput-object v14, v13, Ljavafx/scene/paint/LinearGradient;->stops:Ljava/util/List;

    .line 230
    move-object v13, v1

    move-object v14, v1

    invoke-direct {v14}, Ljavafx/scene/paint/LinearGradient;->determineOpacity()Z

    move-result v14

    iput-boolean v14, v13, Ljavafx/scene/paint/LinearGradient;->opaque:Z

    .line 231
    return-void

    .line 228
    :cond_0
    move-object v14, v11

    goto :goto_0
.end method

.method private determineOpacity()Z
    .locals 5

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/LinearGradient;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/paint/LinearGradient;->stops:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v1, v3

    .line 272
    .local v1, "numStops":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_1

    .line 273
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/paint/LinearGradient;->stops:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/paint/Stop;

    invoke-virtual {v3}, Ljavafx/scene/paint/Stop;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/paint/Color;->isOpaque()Z

    move-result v3

    if-nez v3, :cond_0

    .line 274
    const/4 v3, 0x0

    move v0, v3

    .line 277
    .end local v0    # "this":Ljavafx/scene/paint/LinearGradient;
    :goto_1
    return v0

    .line 272
    .restart local v0    # "this":Ljavafx/scene/paint/LinearGradient;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/paint/LinearGradient;
    .locals 34

    .prologue
    .line 402
    move-object/from16 v3, p0

    .local v3, "value":Ljava/lang/String;
    move-object/from16 v20, v3

    if-nez v20, :cond_0

    .line 403
    new-instance v20, Ljava/lang/NullPointerException;

    move-object/from16 v33, v20

    move-object/from16 v20, v33

    move-object/from16 v21, v33

    const-string v22, "gradient must be specified"

    invoke-direct/range {v21 .. v22}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 406
    :cond_0
    const-string v20, "linear-gradient("

    move-object/from16 v4, v20

    .line 407
    .local v4, "start":Ljava/lang/String;
    const-string v20, ")"

    move-object/from16 v5, v20

    .line 408
    .local v5, "end":Ljava/lang/String;
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 409
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 410
    new-instance v20, Ljava/lang/IllegalArgumentException;

    move-object/from16 v33, v20

    move-object/from16 v20, v33

    move-object/from16 v21, v33

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v33, v22

    move-object/from16 v22, v33

    move-object/from16 v23, v33

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid gradient specification, must end with \""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v5

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x22

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 413
    :cond_1
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v23, v5

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    sub-int v22, v22, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v3, v20

    .line 416
    :cond_2
    new-instance v20, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;

    move-object/from16 v33, v20

    move-object/from16 v20, v33

    move-object/from16 v21, v33

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v22}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, v20

    .line 417
    .local v6, "parser":Lcom/sun/javafx/scene/paint/GradientUtils$Parser;
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->getSize()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 418
    new-instance v20, Ljava/lang/IllegalArgumentException;

    move-object/from16 v33, v20

    move-object/from16 v20, v33

    move-object/from16 v21, v33

    const-string v22, "Invalid gradient specification"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 421
    :cond_3
    sget-object v20, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->MIN:Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-object/from16 v7, v20

    .line 422
    .local v7, "startX":Lcom/sun/javafx/scene/paint/GradientUtils$Point;
    sget-object v20, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->MIN:Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-object/from16 v8, v20

    .line 423
    .local v8, "startY":Lcom/sun/javafx/scene/paint/GradientUtils$Point;
    sget-object v20, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->MIN:Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-object/from16 v9, v20

    .line 424
    .local v9, "endX":Lcom/sun/javafx/scene/paint/GradientUtils$Point;
    sget-object v20, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->MIN:Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-object/from16 v10, v20

    .line 426
    .local v10, "endY":Lcom/sun/javafx/scene/paint/GradientUtils$Point;
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->splitCurrentToken()[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v11, v20

    .line 427
    .local v11, "tokens":[Ljava/lang/String;
    const-string v20, "from"

    move-object/from16 v21, v11

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 428
    move-object/from16 v20, v11

    const/16 v21, 0x5

    invoke-static/range {v20 .. v21}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->checkNumberOfArguments([Ljava/lang/String;I)V

    .line 429
    move-object/from16 v20, v6

    move-object/from16 v21, v11

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->parsePoint(Ljava/lang/String;)Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-result-object v20

    move-object/from16 v7, v20

    .line 430
    move-object/from16 v20, v6

    move-object/from16 v21, v11

    const/16 v22, 0x2

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->parsePoint(Ljava/lang/String;)Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-result-object v20

    move-object/from16 v8, v20

    .line 431
    const-string v20, "to"

    move-object/from16 v21, v11

    const/16 v22, 0x3

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 432
    new-instance v20, Ljava/lang/IllegalArgumentException;

    move-object/from16 v33, v20

    move-object/from16 v20, v33

    move-object/from16 v21, v33

    const-string v22, "Invalid gradient specification, \"to\" expected"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 434
    :cond_4
    move-object/from16 v20, v6

    move-object/from16 v21, v11

    const/16 v22, 0x4

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->parsePoint(Ljava/lang/String;)Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-result-object v20

    move-object/from16 v9, v20

    .line 435
    move-object/from16 v20, v6

    move-object/from16 v21, v11

    const/16 v22, 0x5

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->parsePoint(Ljava/lang/String;)Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-result-object v20

    move-object/from16 v10, v20

    .line 436
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->shift()V

    .line 479
    :goto_0
    sget-object v20, Ljavafx/scene/paint/CycleMethod;->NO_CYCLE:Ljavafx/scene/paint/CycleMethod;

    move-object/from16 v12, v20

    .line 480
    .local v12, "method":Ljavafx/scene/paint/CycleMethod;
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->getCurrentToken()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v13, v20

    .line 481
    .local v13, "currentToken":Ljava/lang/String;
    const-string v20, "repeat"

    move-object/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 482
    sget-object v20, Ljavafx/scene/paint/CycleMethod;->REPEAT:Ljavafx/scene/paint/CycleMethod;

    move-object/from16 v12, v20

    .line 483
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->shift()V

    .line 489
    :cond_5
    :goto_1
    const-wide/16 v20, 0x0

    move-wide/from16 v14, v20

    .line 490
    .local v14, "dist":D
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->proportional:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 491
    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->value:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v7

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->value:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v16, v20

    .line 492
    .local v16, "dx":D
    move-object/from16 v20, v10

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->value:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v8

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->value:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v18, v20

    .line 493
    .local v18, "dy":D
    move-wide/from16 v20, v16

    move-wide/from16 v22, v16

    mul-double v20, v20, v22

    move-wide/from16 v22, v18

    move-wide/from16 v24, v18

    mul-double v22, v22, v24

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 496
    .end local v16    # "dx":D
    .end local v18    # "dy":D
    :cond_6
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->proportional:Z

    move/from16 v21, v0

    move-wide/from16 v22, v14

    invoke-virtual/range {v20 .. v23}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->parseStops(ZD)[Ljavafx/scene/paint/Stop;

    move-result-object v20

    move-object/from16 v16, v20

    .line 498
    .local v16, "stops":[Ljavafx/scene/paint/Stop;
    new-instance v20, Ljavafx/scene/paint/LinearGradient;

    move-object/from16 v33, v20

    move-object/from16 v20, v33

    move-object/from16 v21, v33

    move-object/from16 v22, v7

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->value:D

    move-wide/from16 v22, v0

    move-object/from16 v24, v8

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->value:D

    move-wide/from16 v24, v0

    move-object/from16 v26, v9

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->value:D

    move-wide/from16 v26, v0

    move-object/from16 v28, v10

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->value:D

    move-wide/from16 v28, v0

    move-object/from16 v30, v7

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->proportional:Z

    move/from16 v30, v0

    move-object/from16 v31, v12

    move-object/from16 v32, v16

    invoke-direct/range {v21 .. v32}, Ljavafx/scene/paint/LinearGradient;-><init>(DDDDZLjavafx/scene/paint/CycleMethod;[Ljavafx/scene/paint/Stop;)V

    move-object/from16 v3, v20

    .end local v3    # "value":Ljava/lang/String;
    return-object v3

    .line 437
    .end local v12    # "method":Ljavafx/scene/paint/CycleMethod;
    .end local v13    # "currentToken":Ljava/lang/String;
    .end local v14    # "dist":D
    .end local v16    # "stops":[Ljavafx/scene/paint/Stop;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_7
    const-string v20, "to"

    move-object/from16 v21, v11

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 438
    const/16 v20, 0x0

    move/from16 v12, v20

    .line 439
    .local v12, "horizontalSet":I
    const/16 v20, 0x0

    move/from16 v13, v20

    .line 441
    .local v13, "verticalSet":I
    const/16 v20, 0x1

    move/from16 v14, v20

    .local v14, "i":I
    :goto_2
    move/from16 v20, v14

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    move/from16 v20, v14

    move-object/from16 v21, v11

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    .line 442
    const-string v20, "left"

    move-object/from16 v21, v11

    move/from16 v22, v14

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 443
    sget-object v20, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->MAX:Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-object/from16 v7, v20

    .line 444
    sget-object v20, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->MIN:Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-object/from16 v9, v20

    .line 445
    add-int/lit8 v12, v12, 0x1

    .line 441
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 446
    :cond_8
    const-string v20, "right"

    move-object/from16 v21, v11

    move/from16 v22, v14

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 447
    sget-object v20, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->MIN:Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-object/from16 v7, v20

    .line 448
    sget-object v20, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->MAX:Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-object/from16 v9, v20

    .line 449
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 450
    :cond_9
    const-string v20, "top"

    move-object/from16 v21, v11

    move/from16 v22, v14

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 451
    sget-object v20, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->MAX:Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-object/from16 v8, v20

    .line 452
    sget-object v20, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->MIN:Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-object/from16 v10, v20

    .line 453
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 454
    :cond_a
    const-string v20, "bottom"

    move-object/from16 v21, v11

    move/from16 v22, v14

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 455
    sget-object v20, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->MIN:Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-object/from16 v8, v20

    .line 456
    sget-object v20, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->MAX:Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-object/from16 v10, v20

    .line 457
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 459
    :cond_b
    new-instance v20, Ljava/lang/IllegalArgumentException;

    move-object/from16 v33, v20

    move-object/from16 v20, v33

    move-object/from16 v21, v33

    const-string v22, "Invalid gradient specification, unknown value after \'to\'"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 463
    :cond_c
    move/from16 v20, v13

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_d

    .line 464
    new-instance v20, Ljava/lang/IllegalArgumentException;

    move-object/from16 v33, v20

    move-object/from16 v20, v33

    move-object/from16 v21, v33

    const-string v22, "Invalid gradient specification, vertical direction set twice after \'to\'"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 467
    :cond_d
    move/from16 v20, v12

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_e

    .line 468
    new-instance v20, Ljava/lang/IllegalArgumentException;

    move-object/from16 v33, v20

    move-object/from16 v20, v33

    move-object/from16 v21, v33

    const-string v22, "Invalid gradient specification, horizontal direction set twice after \'to\'"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 471
    :cond_e
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->shift()V

    .line 472
    goto/16 :goto_0

    .line 474
    .end local v12    # "horizontalSet":I
    .end local v13    # "verticalSet":I
    .end local v14    # "i":I
    :cond_f
    sget-object v20, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->MIN:Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-object/from16 v8, v20

    .line 475
    sget-object v20, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->MAX:Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-object/from16 v10, v20

    goto/16 :goto_0

    .line 484
    .local v12, "method":Ljavafx/scene/paint/CycleMethod;
    .local v13, "currentToken":Ljava/lang/String;
    :cond_10
    const-string v20, "reflect"

    move-object/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 485
    sget-object v20, Ljavafx/scene/paint/CycleMethod;->REFLECT:Ljavafx/scene/paint/CycleMethod;

    move-object/from16 v12, v20

    .line 486
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->shift()V

    goto/16 :goto_1
.end method


# virtual methods
.method acc_getPlatformPaint()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/LinearGradient;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/LinearGradient;->platformPaint:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 283
    move-object v1, v0

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/Toolkit;->getPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/paint/LinearGradient;->platformPaint:Ljava/lang/Object;

    .line 285
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/LinearGradient;->platformPaint:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/LinearGradient;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 294
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/paint/LinearGradient;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v1, v4

    .line 306
    .end local v1    # "this":Ljavafx/scene/paint/LinearGradient;
    :goto_0
    return v1

    .line 295
    .restart local v1    # "this":Ljavafx/scene/paint/LinearGradient;
    :cond_0
    move-object v4, v2

    move-object v5, v1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    move v1, v4

    goto :goto_0

    .line 296
    :cond_1
    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/paint/LinearGradient;

    if-eqz v4, :cond_5

    .line 297
    move-object v4, v2

    check-cast v4, Ljavafx/scene/paint/LinearGradient;

    move-object v3, v4

    .line 298
    .local v3, "other":Ljavafx/scene/paint/LinearGradient;
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/paint/LinearGradient;->startX:D

    move-object v6, v3

    iget-wide v6, v6, Ljavafx/scene/paint/LinearGradient;->startX:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/paint/LinearGradient;->startY:D

    move-object v6, v3

    iget-wide v6, v6, Ljavafx/scene/paint/LinearGradient;->startY:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/paint/LinearGradient;->endX:D

    move-object v6, v3

    iget-wide v6, v6, Ljavafx/scene/paint/LinearGradient;->endX:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/paint/LinearGradient;->endY:D

    move-object v6, v3

    iget-wide v6, v6, Ljavafx/scene/paint/LinearGradient;->endY:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/paint/LinearGradient;->proportional:Z

    move-object v5, v3

    iget-boolean v5, v5, Ljavafx/scene/paint/LinearGradient;->proportional:Z

    if-ne v4, v5, :cond_2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/paint/LinearGradient;->cycleMethod:Ljavafx/scene/paint/CycleMethod;

    move-object v5, v3

    iget-object v5, v5, Ljavafx/scene/paint/LinearGradient;->cycleMethod:Ljavafx/scene/paint/CycleMethod;

    if-eq v4, v5, :cond_3

    .line 303
    :cond_2
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 304
    :cond_3
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/paint/LinearGradient;->stops:Ljava/util/List;

    move-object v5, v3

    iget-object v5, v5, Ljavafx/scene/paint/LinearGradient;->stops:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 305
    :cond_4
    const/4 v4, 0x1

    move v1, v4

    goto :goto_0

    .line 306
    .end local v3    # "other":Ljavafx/scene/paint/LinearGradient;
    :cond_5
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public final getCycleMethod()Ljavafx/scene/paint/CycleMethod;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/LinearGradient;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/LinearGradient;->cycleMethod:Ljavafx/scene/paint/CycleMethod;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/LinearGradient;
    return-object v0
.end method

.method public final getEndX()D
    .locals 3

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/LinearGradient;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/paint/LinearGradient;->endX:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/LinearGradient;
    return-wide v0
.end method

.method public final getEndY()D
    .locals 3

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/LinearGradient;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/paint/LinearGradient;->endY:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/LinearGradient;
    return-wide v0
.end method

.method public final getStartX()D
    .locals 3

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/LinearGradient;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/paint/LinearGradient;->startX:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/LinearGradient;
    return-wide v0
.end method

.method public final getStartY()D
    .locals 3

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/LinearGradient;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/paint/LinearGradient;->startY:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/LinearGradient;
    return-wide v0
.end method

.method public final getStops()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/paint/Stop;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/LinearGradient;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/LinearGradient;->stops:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/LinearGradient;
    return-object v0
.end method

.method public hashCode()I
    .locals 12

    .prologue
    .line 314
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/paint/LinearGradient;
    move-object v6, v1

    iget v6, v6, Ljavafx/scene/paint/LinearGradient;->hash:I

    if-nez v6, :cond_2

    .line 315
    const-wide/16 v6, 0x11

    move-wide v2, v6

    .line 316
    .local v2, "bits":J
    const-wide/16 v6, 0x25

    move-wide v8, v2

    mul-long/2addr v6, v8

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/paint/LinearGradient;->startX:D

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 317
    const-wide/16 v6, 0x25

    move-wide v8, v2

    mul-long/2addr v6, v8

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/paint/LinearGradient;->startY:D

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 318
    const-wide/16 v6, 0x25

    move-wide v8, v2

    mul-long/2addr v6, v8

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/paint/LinearGradient;->endX:D

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 319
    const-wide/16 v6, 0x25

    move-wide v8, v2

    mul-long/2addr v6, v8

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/paint/LinearGradient;->endY:D

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 320
    const-wide/16 v6, 0x25

    move-wide v8, v2

    mul-long/2addr v6, v8

    move-object v8, v1

    iget-boolean v8, v8, Ljavafx/scene/paint/LinearGradient;->proportional:Z

    if-eqz v8, :cond_0

    const-wide/16 v8, 0x4cf

    :goto_0
    add-long/2addr v6, v8

    move-wide v2, v6

    .line 321
    const-wide/16 v6, 0x25

    move-wide v8, v2

    mul-long/2addr v6, v8

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/paint/LinearGradient;->cycleMethod:Ljavafx/scene/paint/CycleMethod;

    invoke-virtual {v8}, Ljavafx/scene/paint/CycleMethod;->hashCode()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 322
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/paint/LinearGradient;->stops:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/paint/Stop;

    move-object v5, v6

    .line 323
    .local v5, "stop":Ljavafx/scene/paint/Stop;
    const-wide/16 v6, 0x25

    move-wide v8, v2

    mul-long/2addr v6, v8

    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/paint/Stop;->hashCode()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 324
    goto :goto_1

    .line 320
    .end local v5    # "stop":Ljavafx/scene/paint/Stop;
    :cond_0
    const-wide/16 v8, 0x4d5

    goto :goto_0

    .line 325
    :cond_1
    move-object v6, v1

    move-wide v7, v2

    move-wide v9, v2

    const/16 v11, 0x20

    shr-long/2addr v9, v11

    xor-long/2addr v7, v9

    long-to-int v7, v7

    iput v7, v6, Ljavafx/scene/paint/LinearGradient;->hash:I

    .line 327
    .end local v2    # "bits":J
    :cond_2
    move-object v6, v1

    iget v6, v6, Ljavafx/scene/paint/LinearGradient;->hash:I

    move v1, v6

    .end local v1    # "this":Ljavafx/scene/paint/LinearGradient;
    return v1
.end method

.method public final isOpaque()Z
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/LinearGradient;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/paint/LinearGradient;->opaque:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/LinearGradient;
    return v0
.end method

.method public final isProportional()Z
    .locals 2

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/LinearGradient;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/paint/LinearGradient;->proportional:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/LinearGradient;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 335
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/paint/LinearGradient;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "linear-gradient(from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/paint/LinearGradient;->startX:D

    move-object v8, v1

    iget-boolean v8, v8, Ljavafx/scene/paint/LinearGradient;->proportional:Z

    .line 336
    invoke-static {v6, v7, v8}, Lcom/sun/javafx/scene/paint/GradientUtils;->lengthToString(DZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    .line 337
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/paint/LinearGradient;->startY:D

    move-object v8, v1

    iget-boolean v8, v8, Ljavafx/scene/paint/LinearGradient;->proportional:Z

    invoke-static {v6, v7, v8}, Lcom/sun/javafx/scene/paint/GradientUtils;->lengthToString(DZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    .line 338
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/paint/LinearGradient;->endX:D

    move-object v8, v1

    iget-boolean v8, v8, Ljavafx/scene/paint/LinearGradient;->proportional:Z

    invoke-static {v6, v7, v8}, Lcom/sun/javafx/scene/paint/GradientUtils;->lengthToString(DZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    .line 339
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/paint/LinearGradient;->endY:D

    move-object v8, v1

    iget-boolean v8, v8, Ljavafx/scene/paint/LinearGradient;->proportional:Z

    invoke-static {v6, v7, v8}, Lcom/sun/javafx/scene/paint/GradientUtils;->lengthToString(DZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    .line 340
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v2, v5

    .line 342
    .local v2, "s":Ljava/lang/StringBuilder;
    sget-object v5, Ljavafx/scene/paint/LinearGradient$1;->$SwitchMap$javafx$scene$paint$CycleMethod:[I

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/paint/LinearGradient;->cycleMethod:Ljavafx/scene/paint/CycleMethod;

    invoke-virtual {v6}, Ljavafx/scene/paint/CycleMethod;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 351
    :goto_0
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/paint/LinearGradient;->stops:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/paint/Stop;

    move-object v4, v5

    .line 352
    .local v4, "stop":Ljavafx/scene/paint/Stop;
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 353
    goto :goto_1

    .line 344
    .end local v4    # "stop":Ljavafx/scene/paint/Stop;
    :pswitch_0
    move-object v5, v2

    const-string v6, "reflect"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 345
    goto :goto_0

    .line 347
    :pswitch_1
    move-object v5, v2

    const-string v6, "repeat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_0

    .line 355
    :cond_0
    move-object v5, v2

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 356
    move-object v5, v2

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 358
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljavafx/scene/paint/LinearGradient;
    return-object v1

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
