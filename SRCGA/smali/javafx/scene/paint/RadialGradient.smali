.class public final Ljavafx/scene/paint/RadialGradient;
.super Ljavafx/scene/paint/Paint;
.source "RadialGradient.java"


# instance fields
.field private centerX:D

.field private centerY:D

.field private cycleMethod:Ljavafx/scene/paint/CycleMethod;

.field private focusAngle:D

.field private focusDistance:D

.field private hash:I

.field private final opaque:Z

.field private platformPaint:Ljava/lang/Object;

.field private proportional:Z

.field private radius:D

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
.method public constructor <init>(DDDDDZLjavafx/scene/paint/CycleMethod;Ljava/util/List;)V
    .locals 21
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "focusAngle"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "focusDistance"
        .end annotation
    .end param
    .param p5    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "centerX"
        .end annotation
    .end param
    .param p7    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "centerY"
        .end annotation
    .end param
    .param p9    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            defaultValue = "1"
            value = "radius"
        .end annotation
    .end param
    .param p11    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            defaultValue = "true"
            value = "proportional"
        .end annotation
    .end param
    .param p12    # Ljavafx/scene/paint/CycleMethod;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "cycleMethod"
        .end annotation
    .end param
    .param p13    # Ljava/util/List;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "stops"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDDDZ",
            "Ljavafx/scene/paint/CycleMethod;",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/paint/Stop;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/paint/RadialGradient;
    move-wide/from16 v4, p1

    .local v4, "focusAngle":D
    move-wide/from16 v6, p3

    .local v6, "focusDistance":D
    move-wide/from16 v8, p5

    .local v8, "centerX":D
    move-wide/from16 v10, p7

    .local v10, "centerY":D
    move-wide/from16 v12, p9

    .local v12, "radius":D
    move/from16 v14, p11

    .local v14, "proportional":Z
    move-object/from16 v15, p12

    .local v15, "cycleMethod":Ljavafx/scene/paint/CycleMethod;
    move-object/from16 v16, p13

    .local v16, "stops":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/paint/Stop;>;"
    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v17}, Ljavafx/scene/paint/Paint;-><init>()V

    .line 265
    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Ljavafx/scene/paint/RadialGradient;->focusAngle:D

    .line 266
    move-object/from16 v17, v3

    move-wide/from16 v18, v6

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Ljavafx/scene/paint/RadialGradient;->focusDistance:D

    .line 267
    move-object/from16 v17, v3

    move-wide/from16 v18, v8

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Ljavafx/scene/paint/RadialGradient;->centerX:D

    .line 268
    move-object/from16 v17, v3

    move-wide/from16 v18, v10

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Ljavafx/scene/paint/RadialGradient;->centerY:D

    .line 269
    move-object/from16 v17, v3

    move-wide/from16 v18, v12

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Ljavafx/scene/paint/RadialGradient;->radius:D

    .line 270
    move-object/from16 v17, v3

    move/from16 v18, v14

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Ljavafx/scene/paint/RadialGradient;->proportional:Z

    .line 271
    move-object/from16 v17, v3

    move-object/from16 v18, v15

    if-nez v18, :cond_0

    sget-object v18, Ljavafx/scene/paint/CycleMethod;->NO_CYCLE:Ljavafx/scene/paint/CycleMethod;

    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/paint/RadialGradient;->cycleMethod:Ljavafx/scene/paint/CycleMethod;

    .line 272
    move-object/from16 v17, v3

    move-object/from16 v18, v16

    invoke-static/range {v18 .. v18}, Ljavafx/scene/paint/Stop;->normalize(Ljava/util/List;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/paint/RadialGradient;->stops:Ljava/util/List;

    .line 273
    move-object/from16 v17, v3

    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v18}, Ljavafx/scene/paint/RadialGradient;->determineOpacity()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Ljavafx/scene/paint/RadialGradient;->opaque:Z

    .line 274
    return-void

    .line 271
    :cond_0
    move-object/from16 v18, v15

    goto :goto_0
.end method

.method public varargs constructor <init>(DDDDDZLjavafx/scene/paint/CycleMethod;[Ljavafx/scene/paint/Stop;)V
    .locals 21
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "focusAngle"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "focusDistance"
        .end annotation
    .end param
    .param p5    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "centerX"
        .end annotation
    .end param
    .param p7    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "centerY"
        .end annotation
    .end param
    .param p9    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            defaultValue = "1"
            value = "radius"
        .end annotation
    .end param
    .param p11    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            defaultValue = "true"
            value = "proportional"
        .end annotation
    .end param
    .param p12    # Ljavafx/scene/paint/CycleMethod;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "cycleMethod"
        .end annotation
    .end param
    .param p13    # [Ljavafx/scene/paint/Stop;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "stops"
        .end annotation
    .end param

    .prologue
    .line 230
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/paint/RadialGradient;
    move-wide/from16 v4, p1

    .local v4, "focusAngle":D
    move-wide/from16 v6, p3

    .local v6, "focusDistance":D
    move-wide/from16 v8, p5

    .local v8, "centerX":D
    move-wide/from16 v10, p7

    .local v10, "centerY":D
    move-wide/from16 v12, p9

    .local v12, "radius":D
    move/from16 v14, p11

    .local v14, "proportional":Z
    move-object/from16 v15, p12

    .local v15, "cycleMethod":Ljavafx/scene/paint/CycleMethod;
    move-object/from16 v16, p13

    .local v16, "stops":[Ljavafx/scene/paint/Stop;
    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v17}, Ljavafx/scene/paint/Paint;-><init>()V

    .line 231
    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Ljavafx/scene/paint/RadialGradient;->focusAngle:D

    .line 232
    move-object/from16 v17, v3

    move-wide/from16 v18, v6

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Ljavafx/scene/paint/RadialGradient;->focusDistance:D

    .line 233
    move-object/from16 v17, v3

    move-wide/from16 v18, v8

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Ljavafx/scene/paint/RadialGradient;->centerX:D

    .line 234
    move-object/from16 v17, v3

    move-wide/from16 v18, v10

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Ljavafx/scene/paint/RadialGradient;->centerY:D

    .line 235
    move-object/from16 v17, v3

    move-wide/from16 v18, v12

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Ljavafx/scene/paint/RadialGradient;->radius:D

    .line 236
    move-object/from16 v17, v3

    move/from16 v18, v14

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Ljavafx/scene/paint/RadialGradient;->proportional:Z

    .line 237
    move-object/from16 v17, v3

    move-object/from16 v18, v15

    if-nez v18, :cond_0

    sget-object v18, Ljavafx/scene/paint/CycleMethod;->NO_CYCLE:Ljavafx/scene/paint/CycleMethod;

    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/paint/RadialGradient;->cycleMethod:Ljavafx/scene/paint/CycleMethod;

    .line 238
    move-object/from16 v17, v3

    move-object/from16 v18, v16

    invoke-static/range {v18 .. v18}, Ljavafx/scene/paint/Stop;->normalize([Ljavafx/scene/paint/Stop;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/paint/RadialGradient;->stops:Ljava/util/List;

    .line 239
    move-object/from16 v17, v3

    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v18}, Ljavafx/scene/paint/RadialGradient;->determineOpacity()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Ljavafx/scene/paint/RadialGradient;->opaque:Z

    .line 240
    return-void

    .line 237
    :cond_0
    move-object/from16 v18, v15

    goto :goto_0
.end method

.method private determineOpacity()Z
    .locals 5

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/RadialGradient;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/paint/RadialGradient;->stops:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v1, v3

    .line 286
    .local v1, "numStops":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_1

    .line 287
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/paint/RadialGradient;->stops:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/paint/Stop;

    invoke-virtual {v3}, Ljavafx/scene/paint/Stop;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/paint/Color;->isOpaque()Z

    move-result v3

    if-nez v3, :cond_0

    .line 288
    const/4 v3, 0x0

    move v0, v3

    .line 291
    .end local v0    # "this":Ljavafx/scene/paint/RadialGradient;
    :goto_1
    return v0

    .line 286
    .restart local v0    # "this":Ljavafx/scene/paint/RadialGradient;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/paint/RadialGradient;
    .locals 34

    .prologue
    .line 423
    move-object/from16 v3, p0

    .local v3, "value":Ljava/lang/String;
    move-object/from16 v18, v3

    if-nez v18, :cond_0

    .line 424
    new-instance v18, Ljava/lang/NullPointerException;

    move-object/from16 v33, v18

    move-object/from16 v18, v33

    move-object/from16 v19, v33

    const-string v20, "gradient must be specified"

    invoke-direct/range {v19 .. v20}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 427
    :cond_0
    const-string v18, "radial-gradient("

    move-object/from16 v4, v18

    .line 428
    .local v4, "start":Ljava/lang/String;
    const-string v18, ")"

    move-object/from16 v5, v18

    .line 429
    .local v5, "end":Ljava/lang/String;
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 430
    move-object/from16 v18, v3

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 431
    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v33, v18

    move-object/from16 v18, v33

    move-object/from16 v19, v33

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v33, v20

    move-object/from16 v20, v33

    move-object/from16 v21, v33

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Invalid gradient specification, must end with \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 434
    :cond_1
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    sub-int v20, v20, v21

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v3, v18

    .line 437
    :cond_2
    new-instance v18, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;

    move-object/from16 v33, v18

    move-object/from16 v18, v33

    move-object/from16 v19, v33

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, v18

    .line 438
    .local v6, "parser":Lcom/sun/javafx/scene/paint/GradientUtils$Parser;
    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->getSize()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 439
    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v33, v18

    move-object/from16 v18, v33

    move-object/from16 v19, v33

    const-string v20, "Invalid gradient specification"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 442
    :cond_3
    const-wide/16 v18, 0x0

    move-wide/from16 v7, v18

    .local v7, "angle":D
    const-wide/16 v18, 0x0

    move-wide/from16 v9, v18

    .line 445
    .local v9, "distance":D
    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->splitCurrentToken()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v14, v18

    .line 446
    .local v14, "tokens":[Ljava/lang/String;
    const-string v18, "focus-angle"

    move-object/from16 v19, v14

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 447
    move-object/from16 v18, v14

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->checkNumberOfArguments([Ljava/lang/String;I)V

    .line 448
    move-object/from16 v18, v14

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->parseAngle(Ljava/lang/String;)D

    move-result-wide v18

    move-wide/from16 v7, v18

    .line 449
    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->shift()V

    .line 452
    :cond_4
    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->splitCurrentToken()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v14, v18

    .line 453
    const-string v18, "focus-distance"

    move-object/from16 v19, v14

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 454
    move-object/from16 v18, v14

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->checkNumberOfArguments([Ljava/lang/String;I)V

    .line 455
    move-object/from16 v18, v14

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->parsePercentage(Ljava/lang/String;)D

    move-result-wide v18

    move-wide/from16 v9, v18

    .line 457
    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->shift()V

    .line 460
    :cond_5
    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->splitCurrentToken()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v14, v18

    .line 461
    const-string v18, "center"

    move-object/from16 v19, v14

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 462
    move-object/from16 v18, v14

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->checkNumberOfArguments([Ljava/lang/String;I)V

    .line 463
    move-object/from16 v18, v6

    move-object/from16 v19, v14

    const/16 v20, 0x1

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->parsePoint(Ljava/lang/String;)Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-result-object v18

    move-object/from16 v11, v18

    .line 464
    .local v11, "centerX":Lcom/sun/javafx/scene/paint/GradientUtils$Point;
    move-object/from16 v18, v6

    move-object/from16 v19, v14

    const/16 v20, 0x2

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->parsePoint(Ljava/lang/String;)Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-result-object v18

    move-object/from16 v12, v18

    .line 465
    .local v12, "centerY":Lcom/sun/javafx/scene/paint/GradientUtils$Point;
    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->shift()V

    .line 471
    :goto_0
    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->splitCurrentToken()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v14, v18

    .line 472
    const-string v18, "radius"

    move-object/from16 v19, v14

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 473
    move-object/from16 v18, v14

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->checkNumberOfArguments([Ljava/lang/String;I)V

    .line 474
    move-object/from16 v18, v6

    move-object/from16 v19, v14

    const/16 v20, 0x1

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->parsePoint(Ljava/lang/String;)Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-result-object v18

    move-object/from16 v13, v18

    .line 475
    .local v13, "radius":Lcom/sun/javafx/scene/paint/GradientUtils$Point;
    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->shift()V

    .line 481
    sget-object v18, Ljavafx/scene/paint/CycleMethod;->NO_CYCLE:Ljavafx/scene/paint/CycleMethod;

    move-object/from16 v15, v18

    .line 482
    .local v15, "method":Ljavafx/scene/paint/CycleMethod;
    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->getCurrentToken()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v18

    .line 483
    .local v16, "currentToken":Ljava/lang/String;
    const-string v18, "repeat"

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 484
    sget-object v18, Ljavafx/scene/paint/CycleMethod;->REPEAT:Ljavafx/scene/paint/CycleMethod;

    move-object/from16 v15, v18

    .line 485
    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->shift()V

    .line 491
    :cond_6
    :goto_1
    move-object/from16 v18, v6

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->proportional:Z

    move/from16 v19, v0

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->value:D

    move-wide/from16 v20, v0

    invoke-virtual/range {v18 .. v21}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->parseStops(ZD)[Ljavafx/scene/paint/Stop;

    move-result-object v18

    move-object/from16 v17, v18

    .line 493
    .local v17, "stops":[Ljavafx/scene/paint/Stop;
    new-instance v18, Ljavafx/scene/paint/RadialGradient;

    move-object/from16 v33, v18

    move-object/from16 v18, v33

    move-object/from16 v19, v33

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-object/from16 v24, v11

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->value:D

    move-wide/from16 v24, v0

    move-object/from16 v26, v12

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->value:D

    move-wide/from16 v26, v0

    move-object/from16 v28, v13

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->value:D

    move-wide/from16 v28, v0

    move-object/from16 v30, v13

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->proportional:Z

    move/from16 v30, v0

    move-object/from16 v31, v15

    move-object/from16 v32, v17

    invoke-direct/range {v19 .. v32}, Ljavafx/scene/paint/RadialGradient;-><init>(DDDDDZLjavafx/scene/paint/CycleMethod;[Ljavafx/scene/paint/Stop;)V

    move-object/from16 v3, v18

    .end local v3    # "value":Ljava/lang/String;
    return-object v3

    .line 467
    .end local v11    # "centerX":Lcom/sun/javafx/scene/paint/GradientUtils$Point;
    .end local v12    # "centerY":Lcom/sun/javafx/scene/paint/GradientUtils$Point;
    .end local v13    # "radius":Lcom/sun/javafx/scene/paint/GradientUtils$Point;
    .end local v15    # "method":Ljavafx/scene/paint/CycleMethod;
    .end local v16    # "currentToken":Ljava/lang/String;
    .end local v17    # "stops":[Ljavafx/scene/paint/Stop;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_7
    sget-object v18, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->MIN:Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-object/from16 v11, v18

    .line 468
    .restart local v11    # "centerX":Lcom/sun/javafx/scene/paint/GradientUtils$Point;
    sget-object v18, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->MIN:Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-object/from16 v12, v18

    .restart local v12    # "centerY":Lcom/sun/javafx/scene/paint/GradientUtils$Point;
    goto/16 :goto_0

    .line 477
    :cond_8
    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v33, v18

    move-object/from16 v18, v33

    move-object/from16 v19, v33

    const-string v20, "Invalid gradient specification: radius must be specified"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 486
    .restart local v13    # "radius":Lcom/sun/javafx/scene/paint/GradientUtils$Point;
    .restart local v15    # "method":Ljavafx/scene/paint/CycleMethod;
    .restart local v16    # "currentToken":Ljava/lang/String;
    :cond_9
    const-string v18, "reflect"

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 487
    sget-object v18, Ljavafx/scene/paint/CycleMethod;->REFLECT:Ljavafx/scene/paint/CycleMethod;

    move-object/from16 v15, v18

    .line 488
    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->shift()V

    goto :goto_1
.end method


# virtual methods
.method acc_getPlatformPaint()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/RadialGradient;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/RadialGradient;->platformPaint:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 297
    move-object v1, v0

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/Toolkit;->getPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/paint/RadialGradient;->platformPaint:Ljava/lang/Object;

    .line 299
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/RadialGradient;->platformPaint:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/RadialGradient;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 308
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/paint/RadialGradient;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    move-object v5, v1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 320
    .end local v1    # "this":Ljavafx/scene/paint/RadialGradient;
    :goto_0
    return v1

    .line 309
    .restart local v1    # "this":Ljavafx/scene/paint/RadialGradient;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/paint/RadialGradient;

    if-eqz v4, :cond_4

    .line 310
    move-object v4, v2

    check-cast v4, Ljavafx/scene/paint/RadialGradient;

    move-object v3, v4

    .line 311
    .local v3, "other":Ljavafx/scene/paint/RadialGradient;
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/paint/RadialGradient;->focusAngle:D

    move-object v6, v3

    iget-wide v6, v6, Ljavafx/scene/paint/RadialGradient;->focusAngle:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/paint/RadialGradient;->focusDistance:D

    move-object v6, v3

    iget-wide v6, v6, Ljavafx/scene/paint/RadialGradient;->focusDistance:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/paint/RadialGradient;->centerX:D

    move-object v6, v3

    iget-wide v6, v6, Ljavafx/scene/paint/RadialGradient;->centerX:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/paint/RadialGradient;->centerY:D

    move-object v6, v3

    iget-wide v6, v6, Ljavafx/scene/paint/RadialGradient;->centerY:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/paint/RadialGradient;->radius:D

    move-object v6, v3

    iget-wide v6, v6, Ljavafx/scene/paint/RadialGradient;->radius:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/paint/RadialGradient;->proportional:Z

    move-object v5, v3

    iget-boolean v5, v5, Ljavafx/scene/paint/RadialGradient;->proportional:Z

    if-ne v4, v5, :cond_1

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/paint/RadialGradient;->cycleMethod:Ljavafx/scene/paint/CycleMethod;

    move-object v5, v3

    iget-object v5, v5, Ljavafx/scene/paint/RadialGradient;->cycleMethod:Ljavafx/scene/paint/CycleMethod;

    if-eq v4, v5, :cond_2

    .line 317
    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 318
    :cond_2
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/paint/RadialGradient;->stops:Ljava/util/List;

    move-object v5, v3

    iget-object v5, v5, Ljavafx/scene/paint/RadialGradient;->stops:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 319
    :cond_3
    const/4 v4, 0x1

    move v1, v4

    goto :goto_0

    .line 320
    .end local v3    # "other":Ljavafx/scene/paint/RadialGradient;
    :cond_4
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public final getCenterX()D
    .locals 3

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/RadialGradient;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/paint/RadialGradient;->centerX:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/RadialGradient;
    return-wide v0
.end method

.method public final getCenterY()D
    .locals 3

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/RadialGradient;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/paint/RadialGradient;->centerY:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/RadialGradient;
    return-wide v0
.end method

.method public final getCycleMethod()Ljavafx/scene/paint/CycleMethod;
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/RadialGradient;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/RadialGradient;->cycleMethod:Ljavafx/scene/paint/CycleMethod;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/RadialGradient;
    return-object v0
.end method

.method public final getFocusAngle()D
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/RadialGradient;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/paint/RadialGradient;->focusAngle:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/RadialGradient;
    return-wide v0
.end method

.method public final getFocusDistance()D
    .locals 3

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/RadialGradient;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/paint/RadialGradient;->focusDistance:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/RadialGradient;
    return-wide v0
.end method

.method public final getRadius()D
    .locals 3

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/RadialGradient;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/paint/RadialGradient;->radius:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/RadialGradient;
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
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/RadialGradient;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/RadialGradient;->stops:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/RadialGradient;
    return-object v0
.end method

.method public hashCode()I
    .locals 12

    .prologue
    .line 330
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/paint/RadialGradient;
    move-object v6, v1

    iget v6, v6, Ljavafx/scene/paint/RadialGradient;->hash:I

    if-nez v6, :cond_2

    .line 331
    const-wide/16 v6, 0x11

    move-wide v2, v6

    .line 332
    .local v2, "bits":J
    const-wide/16 v6, 0x25

    move-wide v8, v2

    mul-long/2addr v6, v8

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/paint/RadialGradient;->focusAngle:D

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 333
    const-wide/16 v6, 0x25

    move-wide v8, v2

    mul-long/2addr v6, v8

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/paint/RadialGradient;->focusDistance:D

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 334
    const-wide/16 v6, 0x25

    move-wide v8, v2

    mul-long/2addr v6, v8

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/paint/RadialGradient;->centerX:D

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 335
    const-wide/16 v6, 0x25

    move-wide v8, v2

    mul-long/2addr v6, v8

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/paint/RadialGradient;->centerY:D

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 336
    const-wide/16 v6, 0x25

    move-wide v8, v2

    mul-long/2addr v6, v8

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/paint/RadialGradient;->radius:D

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 337
    const-wide/16 v6, 0x25

    move-wide v8, v2

    mul-long/2addr v6, v8

    move-object v8, v1

    iget-boolean v8, v8, Ljavafx/scene/paint/RadialGradient;->proportional:Z

    if-eqz v8, :cond_0

    const/16 v8, 0x4cf

    :goto_0
    int-to-long v8, v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 338
    const-wide/16 v6, 0x25

    move-wide v8, v2

    mul-long/2addr v6, v8

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/paint/RadialGradient;->cycleMethod:Ljavafx/scene/paint/CycleMethod;

    invoke-virtual {v8}, Ljavafx/scene/paint/CycleMethod;->hashCode()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 339
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/paint/RadialGradient;->stops:Ljava/util/List;

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

    .line 340
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

    .line 341
    goto :goto_1

    .line 337
    .end local v5    # "stop":Ljavafx/scene/paint/Stop;
    :cond_0
    const/16 v8, 0x4d5

    goto :goto_0

    .line 342
    :cond_1
    move-object v6, v1

    move-wide v7, v2

    move-wide v9, v2

    const/16 v11, 0x20

    shr-long/2addr v9, v11

    xor-long/2addr v7, v9

    long-to-int v7, v7

    iput v7, v6, Ljavafx/scene/paint/RadialGradient;->hash:I

    .line 344
    .end local v2    # "bits":J
    :cond_2
    move-object v6, v1

    iget v6, v6, Ljavafx/scene/paint/RadialGradient;->hash:I

    move v1, v6

    .end local v1    # "this":Ljavafx/scene/paint/RadialGradient;
    return v1
.end method

.method public final isOpaque()Z
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/RadialGradient;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/paint/RadialGradient;->opaque:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/RadialGradient;
    return v0
.end method

.method public final isProportional()Z
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/RadialGradient;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/paint/RadialGradient;->proportional:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/RadialGradient;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 352
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/paint/RadialGradient;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "radial-gradient(focus-angle "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/paint/RadialGradient;->focusAngle:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "deg, focus-distance "

    .line 353
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/paint/RadialGradient;->focusDistance:D

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "% , center "

    .line 354
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/paint/RadialGradient;->centerX:D

    move-object v8, v1

    iget-boolean v8, v8, Ljavafx/scene/paint/RadialGradient;->proportional:Z

    invoke-static {v6, v7, v8}, Lcom/sun/javafx/scene/paint/GradientUtils;->lengthToString(DZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    .line 355
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/paint/RadialGradient;->centerY:D

    move-object v8, v1

    iget-boolean v8, v8, Ljavafx/scene/paint/RadialGradient;->proportional:Z

    invoke-static {v6, v7, v8}, Lcom/sun/javafx/scene/paint/GradientUtils;->lengthToString(DZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", radius "

    .line 356
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/paint/RadialGradient;->radius:D

    move-object v8, v1

    iget-boolean v8, v8, Ljavafx/scene/paint/RadialGradient;->proportional:Z

    invoke-static {v6, v7, v8}, Lcom/sun/javafx/scene/paint/GradientUtils;->lengthToString(DZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    .line 357
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v2, v5

    .line 359
    .local v2, "s":Ljava/lang/StringBuilder;
    sget-object v5, Ljavafx/scene/paint/RadialGradient$1;->$SwitchMap$javafx$scene$paint$CycleMethod:[I

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/paint/RadialGradient;->cycleMethod:Ljavafx/scene/paint/CycleMethod;

    invoke-virtual {v6}, Ljavafx/scene/paint/CycleMethod;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 368
    :goto_0
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/paint/RadialGradient;->stops:Ljava/util/List;

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

    .line 369
    .local v4, "stop":Ljavafx/scene/paint/Stop;
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 370
    goto :goto_1

    .line 361
    .end local v4    # "stop":Ljavafx/scene/paint/Stop;
    :pswitch_0
    move-object v5, v2

    const-string v6, "reflect"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 362
    goto :goto_0

    .line 364
    :pswitch_1
    move-object v5, v2

    const-string v6, "repeat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_0

    .line 372
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

    .line 373
    move-object v5, v2

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 375
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljavafx/scene/paint/RadialGradient;
    return-object v1

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
