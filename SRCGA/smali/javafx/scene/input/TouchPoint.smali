.class public final Ljavafx/scene/input/TouchPoint;
.super Ljava/lang/Object;
.source "TouchPoint.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/input/TouchPoint$State;
    }
.end annotation


# instance fields
.field private grabbed:Ljavafx/event/EventTarget;

.field private id:I

.field private pickResult:Ljavafx/scene/input/PickResult;

.field private sceneX:D

.field private sceneY:D

.field private screenX:D

.field private screenY:D

.field private transient source:Ljava/lang/Object;

.field private state:Ljavafx/scene/input/TouchPoint$State;

.field private transient target:Ljavafx/event/EventTarget;

.field private transient x:D

.field private transient y:D

.field private transient z:D


# direct methods
.method public constructor <init>(ILjavafx/scene/input/TouchPoint$State;DDDDLjavafx/event/EventTarget;Ljavafx/scene/input/PickResult;)V
    .locals 27
    .param p1    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljavafx/scene/input/TouchPoint$State;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "state"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "x"
        .end annotation
    .end param
    .param p5    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "y"
        .end annotation
    .end param
    .param p7    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "screenX"
        .end annotation
    .end param
    .param p9    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "screenY"
        .end annotation
    .end param
    .param p11    # Ljavafx/event/EventTarget;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "target"
        .end annotation
    .end param
    .param p12    # Ljavafx/scene/input/PickResult;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "pickResult"
        .end annotation
    .end param

    .prologue
    .line 75
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/input/TouchPoint;
    move/from16 v4, p1

    .local v4, "id":I
    move-object/from16 v5, p2

    .local v5, "state":Ljavafx/scene/input/TouchPoint$State;
    move-wide/from16 v6, p3

    .local v6, "x":D
    move-wide/from16 v8, p5

    .local v8, "y":D
    move-wide/from16 v10, p7

    .local v10, "screenX":D
    move-wide/from16 v12, p9

    .local v12, "screenY":D
    move-object/from16 v14, p11

    .local v14, "target":Ljavafx/event/EventTarget;
    move-object/from16 v15, p12

    .local v15, "pickResult":Ljavafx/scene/input/PickResult;
    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v17}, Ljava/lang/Object;-><init>()V

    .line 150
    move-object/from16 v17, v3

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/input/TouchPoint;->grabbed:Ljavafx/event/EventTarget;

    .line 76
    move-object/from16 v17, v3

    move-object/from16 v18, v14

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/input/TouchPoint;->target:Ljavafx/event/EventTarget;

    .line 77
    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Ljavafx/scene/input/TouchPoint;->id:I

    .line 78
    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/input/TouchPoint;->state:Ljavafx/scene/input/TouchPoint$State;

    .line 79
    move-object/from16 v17, v3

    move-wide/from16 v18, v6

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Ljavafx/scene/input/TouchPoint;->x:D

    .line 80
    move-object/from16 v17, v3

    move-wide/from16 v18, v8

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Ljavafx/scene/input/TouchPoint;->y:D

    .line 81
    move-object/from16 v17, v3

    move-wide/from16 v18, v6

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Ljavafx/scene/input/TouchPoint;->sceneX:D

    .line 82
    move-object/from16 v17, v3

    move-wide/from16 v18, v8

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Ljavafx/scene/input/TouchPoint;->sceneY:D

    .line 83
    move-object/from16 v17, v3

    move-wide/from16 v18, v10

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Ljavafx/scene/input/TouchPoint;->screenX:D

    .line 84
    move-object/from16 v17, v3

    move-wide/from16 v18, v12

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Ljavafx/scene/input/TouchPoint;->screenY:D

    .line 85
    move-object/from16 v17, v3

    move-object/from16 v18, v15

    if-eqz v18, :cond_0

    move-object/from16 v18, v15

    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/input/TouchPoint;->pickResult:Ljavafx/scene/input/PickResult;

    .line 86
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/input/TouchPoint;->pickResult:Ljavafx/scene/input/PickResult;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/sun/javafx/scene/input/InputEventUtils;->recomputeCoordinates(Ljavafx/scene/input/PickResult;Ljava/lang/Object;)Ljavafx/geometry/Point3D;

    move-result-object v17

    move-object/from16 v16, v17

    .line 87
    .local v16, "p":Ljavafx/geometry/Point3D;
    move-object/from16 v17, v3

    move-object/from16 v18, v16

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Ljavafx/scene/input/TouchPoint;->x:D

    .line 88
    move-object/from16 v17, v3

    move-object/from16 v18, v16

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Ljavafx/scene/input/TouchPoint;->y:D

    .line 89
    move-object/from16 v17, v3

    move-object/from16 v18, v16

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Ljavafx/scene/input/TouchPoint;->z:D

    .line 90
    return-void

    .line 85
    .end local v16    # "p":Ljavafx/geometry/Point3D;
    :cond_0
    new-instance v18, Ljavafx/scene/input/PickResult;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    move-object/from16 v20, v14

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    invoke-direct/range {v19 .. v24}, Ljavafx/scene/input/PickResult;-><init>(Ljavafx/event/EventTarget;DD)V

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 359
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/input/TouchPoint;
    move-object v2, p1

    .local v2, "in":Ljava/io/ObjectInputStream;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 360
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/input/TouchPoint;->sceneX:D

    iput-wide v4, v3, Ljavafx/scene/input/TouchPoint;->x:D

    .line 361
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/input/TouchPoint;->sceneY:D

    iput-wide v4, v3, Ljavafx/scene/input/TouchPoint;->y:D

    .line 362
    return-void
.end method


# virtual methods
.method public belongsTo(Ljavafx/event/EventTarget;)Z
    .locals 5

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchPoint;
    move-object v1, p1

    .local v1, "target":Ljavafx/event/EventTarget;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/TouchPoint;->target:Ljavafx/event/EventTarget;

    instance-of v3, v3, Ljavafx/scene/Node;

    if-eqz v3, :cond_3

    .line 122
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/TouchPoint;->target:Ljavafx/event/EventTarget;

    check-cast v3, Ljavafx/scene/Node;

    move-object v2, v3

    .line 124
    .local v2, "n":Ljavafx/scene/Node;
    move-object v3, v1

    instance-of v3, v3, Ljavafx/scene/Scene;

    if-eqz v3, :cond_2

    .line 125
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 135
    .end local v0    # "this":Ljavafx/scene/input/TouchPoint;
    .end local v2    # "n":Ljavafx/scene/Node;
    :goto_1
    return v0

    .line 125
    .restart local v0    # "this":Ljavafx/scene/input/TouchPoint;
    .restart local v2    # "n":Ljavafx/scene/Node;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 131
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v3

    move-object v2, v3

    .line 127
    :cond_2
    move-object v3, v2

    if-eqz v3, :cond_3

    .line 128
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 129
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 135
    .end local v2    # "n":Ljavafx/scene/Node;
    :cond_3
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/input/TouchPoint;->target:Ljavafx/event/EventTarget;

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public getGrabbed()Ljavafx/event/EventTarget;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchPoint;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/TouchPoint;->grabbed:Ljavafx/event/EventTarget;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/TouchPoint;
    return-object v0
.end method

.method public final getId()I
    .locals 2

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchPoint;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/input/TouchPoint;->id:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/TouchPoint;
    return v0
.end method

.method public final getPickResult()Ljavafx/scene/input/PickResult;
    .locals 2

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchPoint;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/TouchPoint;->pickResult:Ljavafx/scene/input/PickResult;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/TouchPoint;
    return-object v0
.end method

.method public final getSceneX()D
    .locals 3

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchPoint;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/TouchPoint;->sceneX:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/TouchPoint;
    return-wide v0
.end method

.method public final getSceneY()D
    .locals 3

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchPoint;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/TouchPoint;->sceneY:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/TouchPoint;
    return-wide v0
.end method

.method public final getScreenX()D
    .locals 3

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchPoint;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/TouchPoint;->screenX:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/TouchPoint;
    return-wide v0
.end method

.method public final getScreenY()D
    .locals 3

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchPoint;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/TouchPoint;->screenY:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/TouchPoint;
    return-wide v0
.end method

.method public final getState()Ljavafx/scene/input/TouchPoint$State;
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchPoint;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/TouchPoint;->state:Ljavafx/scene/input/TouchPoint$State;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/TouchPoint;
    return-object v0
.end method

.method public getTarget()Ljavafx/event/EventTarget;
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchPoint;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/TouchPoint;->target:Ljavafx/event/EventTarget;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/TouchPoint;
    return-object v0
.end method

.method public final getX()D
    .locals 3

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchPoint;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/TouchPoint;->x:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/TouchPoint;
    return-wide v0
.end method

.method public final getY()D
    .locals 3

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchPoint;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/TouchPoint;->y:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/TouchPoint;
    return-wide v0
.end method

.method public final getZ()D
    .locals 3

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchPoint;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/TouchPoint;->z:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/TouchPoint;
    return-wide v0
.end method

.method public grab()V
    .locals 6

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchPoint;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/TouchPoint;->source:Ljava/lang/Object;

    instance-of v1, v1, Ljavafx/event/EventTarget;

    if-eqz v1, :cond_0

    .line 167
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/input/TouchPoint;->source:Ljava/lang/Object;

    check-cast v2, Ljavafx/event/EventTarget;

    iput-object v2, v1, Ljavafx/scene/input/TouchPoint;->grabbed:Ljavafx/event/EventTarget;

    .line 172
    return-void

    .line 169
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot grab touch point, source is not an instance of EventTarget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/input/TouchPoint;->source:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public grab(Ljavafx/event/EventTarget;)V
    .locals 4

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchPoint;
    move-object v1, p1

    .local v1, "target":Ljavafx/event/EventTarget;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/input/TouchPoint;->grabbed:Ljavafx/event/EventTarget;

    .line 181
    return-void
.end method

.method public impl_reset()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/input/TouchPoint;
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/input/TouchPoint;->pickResult:Ljavafx/scene/input/PickResult;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/input/InputEventUtils;->recomputeCoordinates(Ljavafx/scene/input/PickResult;Ljava/lang/Object;)Ljavafx/geometry/Point3D;

    move-result-object v3

    move-object v2, v3

    .line 145
    .local v2, "p":Ljavafx/geometry/Point3D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v4

    iput-wide v4, v3, Ljavafx/scene/input/TouchPoint;->x:D

    .line 146
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v4

    iput-wide v4, v3, Ljavafx/scene/input/TouchPoint;->y:D

    .line 147
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v4

    iput-wide v4, v3, Ljavafx/scene/input/TouchPoint;->z:D

    .line 148
    return-void
.end method

.method recomputeToSource(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 100
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/input/TouchPoint;
    move-object v2, p1

    .local v2, "oldSource":Ljava/lang/Object;
    move-object v3, p2

    .local v3, "newSource":Ljava/lang/Object;
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/input/TouchPoint;->pickResult:Ljavafx/scene/input/PickResult;

    move-object v6, v3

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/input/InputEventUtils;->recomputeCoordinates(Ljavafx/scene/input/PickResult;Ljava/lang/Object;)Ljavafx/geometry/Point3D;

    move-result-object v5

    move-object v4, v5

    .line 103
    .local v4, "newCoordinates":Ljavafx/geometry/Point3D;
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v6

    iput-wide v6, v5, Ljavafx/scene/input/TouchPoint;->x:D

    .line 104
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    iput-wide v6, v5, Ljavafx/scene/input/TouchPoint;->y:D

    .line 105
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v6

    iput-wide v6, v5, Ljavafx/scene/input/TouchPoint;->z:D

    .line 107
    move-object v5, v1

    move-object v6, v3

    iput-object v6, v5, Ljavafx/scene/input/TouchPoint;->source:Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 345
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/input/TouchPoint;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "TouchPoint ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 347
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string v4, "state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/TouchPoint;->getState()Ljavafx/scene/input/TouchPoint$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 348
    move-object v3, v2

    const-string v4, ", id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/TouchPoint;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 349
    move-object v3, v2

    const-string v4, ", target = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/TouchPoint;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 350
    move-object v3, v2

    const-string v4, ", x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/TouchPoint;->getX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/TouchPoint;->getY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", z = "

    .line 351
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/TouchPoint;->getZ()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 352
    move-object v3, v2

    const-string v4, ", pickResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/TouchPoint;->getPickResult()Ljavafx/scene/input/PickResult;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 354
    move-object v3, v2

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/input/TouchPoint;
    return-object v1
.end method

.method public ungrab()V
    .locals 3

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchPoint;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/input/TouchPoint;->grabbed:Ljavafx/event/EventTarget;

    .line 190
    return-void
.end method
