.class public final Ljavafx/scene/input/RotateEvent;
.super Ljavafx/scene/input/GestureEvent;
.source "RotateEvent.java"


# static fields
.field public static final ANY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/RotateEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATE:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/RotateEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_FINISHED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/RotateEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_STARTED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/RotateEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1330613L


# instance fields
.field private final angle:D

.field private final totalAngle:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 67
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/GestureEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "ANY_ROTATE"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/RotateEvent;->ANY:Ljavafx/event/EventType;

    .line 74
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/RotateEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "ROTATE"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/RotateEvent;->ROTATE:Ljavafx/event/EventType;

    .line 80
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/RotateEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "ROTATION_STARTED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/RotateEvent;->ROTATION_STARTED:Ljavafx/event/EventType;

    .line 86
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/RotateEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "ROTATION_FINISHED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/RotateEvent;->ROTATION_FINISHED:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;DDDDZZZZZZDDLjavafx/scene/input/PickResult;)V
    .locals 46
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "source"
        .end annotation
    .end param
    .param p2    # Ljavafx/event/EventTarget;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "target"
        .end annotation
    .end param
    .param p3    # Ljavafx/event/EventType;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "eventType"
        .end annotation
    .end param
    .param p4    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "x"
        .end annotation
    .end param
    .param p6    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "y"
        .end annotation
    .end param
    .param p8    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "screenX"
        .end annotation
    .end param
    .param p10    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "screenY"
        .end annotation
    .end param
    .param p12    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "shiftDown"
        .end annotation
    .end param
    .param p13    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "controlDown"
        .end annotation
    .end param
    .param p14    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "altDown"
        .end annotation
    .end param
    .param p15    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "metaDown"
        .end annotation
    .end param
    .param p16    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "direct"
        .end annotation
    .end param
    .param p17    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "inertia"
        .end annotation
    .end param
    .param p18    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "angle"
        .end annotation
    .end param
    .param p20    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "totalAngle"
        .end annotation
    .end param
    .param p22    # Ljavafx/scene/input/PickResult;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "pickResult"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/event/EventTarget;",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/RotateEvent;",
            ">;DDDDZZZZZZDD",
            "Ljavafx/scene/input/PickResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    move-object/from16 v4, p0

    .local v4, "this":Ljavafx/scene/input/RotateEvent;
    move-object/from16 v5, p1

    .local v5, "source":Ljava/lang/Object;
    move-object/from16 v6, p2

    .local v6, "target":Ljavafx/event/EventTarget;
    move-object/from16 v7, p3

    .local v7, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/RotateEvent;>;"
    move-wide/from16 v8, p4

    .local v8, "x":D
    move-wide/from16 v10, p6

    .local v10, "y":D
    move-wide/from16 v12, p8

    .local v12, "screenX":D
    move-wide/from16 v14, p10

    .local v14, "screenY":D
    move/from16 v16, p12

    .local v16, "shiftDown":Z
    move/from16 v17, p13

    .local v17, "controlDown":Z
    move/from16 v18, p14

    .local v18, "altDown":Z
    move/from16 v19, p15

    .local v19, "metaDown":Z
    move/from16 v20, p16

    .local v20, "direct":Z
    move/from16 v21, p17

    .local v21, "inertia":Z
    move-wide/from16 v22, p18

    .local v22, "angle":D
    move-wide/from16 v24, p20

    .local v24, "totalAngle":D
    move-object/from16 v26, p22

    .local v26, "pickResult":Ljavafx/scene/input/PickResult;
    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-wide/from16 v31, v8

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-wide/from16 v37, v14

    move/from16 v39, v16

    move/from16 v40, v17

    move/from16 v41, v18

    move/from16 v42, v19

    move/from16 v43, v20

    move/from16 v44, v21

    move-object/from16 v45, v26

    invoke-direct/range {v27 .. v45}, Ljavafx/scene/input/GestureEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;DDDDZZZZZZLjavafx/scene/input/PickResult;)V

    .line 126
    move-object/from16 v27, v4

    move-wide/from16 v28, v22

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/input/RotateEvent;->angle:D

    .line 127
    move-object/from16 v27, v4

    move-wide/from16 v28, v24

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Ljavafx/scene/input/RotateEvent;->totalAngle:D

    .line 128
    return-void
.end method

.method public constructor <init>(Ljavafx/event/EventType;DDDDZZZZZZDDLjavafx/scene/input/PickResult;)V
    .locals 44
    .param p1    # Ljavafx/event/EventType;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "eventType"
        .end annotation
    .end param
    .param p2    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "x"
        .end annotation
    .end param
    .param p4    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "y"
        .end annotation
    .end param
    .param p6    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "screenX"
        .end annotation
    .end param
    .param p8    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "screenY"
        .end annotation
    .end param
    .param p10    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "shiftDown"
        .end annotation
    .end param
    .param p11    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "controlDown"
        .end annotation
    .end param
    .param p12    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "altDown"
        .end annotation
    .end param
    .param p13    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "metaDown"
        .end annotation
    .end param
    .param p14    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "direct"
        .end annotation
    .end param
    .param p15    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "inertia"
        .end annotation
    .end param
    .param p16    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "angle"
        .end annotation
    .end param
    .param p18    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "totalAngle"
        .end annotation
    .end param
    .param p20    # Ljavafx/scene/input/PickResult;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "pickResult"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/RotateEvent;",
            ">;DDDDZZZZZZDD",
            "Ljavafx/scene/input/PickResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 160
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/input/RotateEvent;
    move-object/from16 v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/RotateEvent;>;"
    move-wide/from16 v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    move-wide/from16 v6, p6

    .local v6, "screenX":D
    move-wide/from16 v8, p8

    .local v8, "screenY":D
    move/from16 v10, p10

    .local v10, "shiftDown":Z
    move/from16 v11, p11

    .local v11, "controlDown":Z
    move/from16 v12, p12

    .local v12, "altDown":Z
    move/from16 v13, p13

    .local v13, "metaDown":Z
    move/from16 v14, p14

    .local v14, "direct":Z
    move/from16 v15, p15

    .local v15, "inertia":Z
    move-wide/from16 v16, p16

    .local v16, "angle":D
    move-wide/from16 v18, p18

    .local v18, "totalAngle":D
    move-object/from16 v20, p20

    .local v20, "pickResult":Ljavafx/scene/input/PickResult;
    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v24, v1

    move-wide/from16 v25, v2

    move-wide/from16 v27, v4

    move-wide/from16 v29, v6

    move-wide/from16 v31, v8

    move/from16 v33, v10

    move/from16 v34, v11

    move/from16 v35, v12

    move/from16 v36, v13

    move/from16 v37, v14

    move/from16 v38, v15

    move-wide/from16 v39, v16

    move-wide/from16 v41, v18

    move-object/from16 v43, v20

    invoke-direct/range {v21 .. v43}, Ljavafx/scene/input/RotateEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;DDDDZZZZZZDDLjavafx/scene/input/PickResult;)V

    .line 162
    return-void
.end method


# virtual methods
.method public bridge synthetic copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/RotateEvent;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/input/RotateEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/RotateEvent;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/input/RotateEvent;
    return-object v0
.end method

.method public bridge synthetic copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/GestureEvent;
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/RotateEvent;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/input/RotateEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/RotateEvent;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/input/RotateEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/RotateEvent;
    .locals 6

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/RotateEvent;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/input/GestureEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/GestureEvent;

    move-result-object v3

    check-cast v3, Ljavafx/scene/input/RotateEvent;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/input/RotateEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/RotateEvent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/event/EventTarget;",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/RotateEvent;",
            ">;)",
            "Ljavafx/scene/input/RotateEvent;"
        }
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/RotateEvent;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v3, p3

    .local v3, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/RotateEvent;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/input/RotateEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/RotateEvent;

    move-result-object v5

    move-object v4, v5

    .line 245
    .local v4, "e":Ljavafx/scene/input/RotateEvent;
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Ljavafx/scene/input/RotateEvent;->eventType:Ljavafx/event/EventType;

    .line 246
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/input/RotateEvent;
    return-object v0
.end method

.method public getAngle()D
    .locals 3

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/RotateEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/RotateEvent;->angle:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/RotateEvent;
    return-wide v0
.end method

.method public getEventType()Ljavafx/event/EventType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/RotateEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/RotateEvent;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/input/GestureEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/RotateEvent;
    return-object v0
.end method

.method public getTotalAngle()D
    .locals 3

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/RotateEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/RotateEvent;->totalAngle:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/RotateEvent;
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 193
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/input/RotateEvent;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "RotateEvent ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 195
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string v4, "source = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/RotateEvent;->getSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 196
    move-object v3, v2

    const-string v4, ", target = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/RotateEvent;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 197
    move-object v3, v2

    const-string v4, ", eventType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/RotateEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 198
    move-object v3, v2

    const-string v4, ", consumed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/RotateEvent;->isConsumed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 200
    move-object v3, v2

    const-string v4, ", angle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/RotateEvent;->getAngle()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 201
    move-object v3, v2

    const-string v4, ", totalAngle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/RotateEvent;->getTotalAngle()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 202
    move-object v3, v2

    const-string v4, ", x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/RotateEvent;->getX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/RotateEvent;->getY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", z = "

    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/RotateEvent;->getZ()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 204
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/RotateEvent;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, ", direct"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 206
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/RotateEvent;->isInertia()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    move-object v3, v2

    const-string v4, ", inertia"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 210
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/RotateEvent;->isShiftDown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    move-object v3, v2

    const-string v4, ", shiftDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 213
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/RotateEvent;->isControlDown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    move-object v3, v2

    const-string v4, ", controlDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 216
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/RotateEvent;->isAltDown()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 217
    move-object v3, v2

    const-string v4, ", altDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 219
    :cond_3
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/RotateEvent;->isMetaDown()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 220
    move-object v3, v2

    const-string v4, ", metaDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 222
    :cond_4
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/RotateEvent;->isShortcutDown()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 223
    move-object v3, v2

    const-string v4, ", shortcutDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 225
    :cond_5
    move-object v3, v2

    const-string v4, ", pickResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/RotateEvent;->getPickResult()Ljavafx/scene/input/PickResult;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 227
    move-object v3, v2

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/input/RotateEvent;
    return-object v1

    .line 204
    .restart local v1    # "this":Ljavafx/scene/input/RotateEvent;
    :cond_6
    const-string v4, ", indirect"

    goto :goto_0
.end method
