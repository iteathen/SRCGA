.class public Ljavafx/scene/input/GestureEvent;
.super Ljavafx/scene/input/InputEvent;
.source "GestureEvent.java"


# static fields
.field public static final ANY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/GestureEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1330613L


# instance fields
.field private final altDown:Z

.field private final controlDown:Z

.field private final direct:Z

.field private final inertia:Z

.field private final metaDown:Z

.field private pickResult:Ljavafx/scene/input/PickResult;

.field private final sceneX:D

.field private final sceneY:D

.field private final screenX:D

.field private final screenY:D

.field private final shiftDown:Z

.field private transient x:D

.field private transient y:D

.field private transient z:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 54
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/InputEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "GESTURE"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/GestureEvent;->ANY:Ljavafx/event/EventType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/event/EventTarget;",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/scene/input/GestureEvent;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 77
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/input/GestureEvent;
    move-object/from16 v2, p1

    .local v2, "source":Ljava/lang/Object;
    move-object/from16 v3, p2

    .local v3, "target":Ljavafx/event/EventTarget;
    move-object/from16 v4, p3

    .local v4, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/scene/input/GestureEvent;>;"
    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/input/InputEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 78
    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    const-wide/16 v11, 0x0

    move-object v15, v10

    move-wide/from16 v16, v11

    move-wide/from16 v10, v16

    move-object v12, v15

    move-wide/from16 v13, v16

    iput-wide v13, v12, Ljavafx/scene/input/GestureEvent;->sceneY:D

    move-object v15, v9

    move-wide/from16 v16, v10

    move-wide/from16 v9, v16

    move-object v11, v15

    move-wide/from16 v12, v16

    iput-wide v12, v11, Ljavafx/scene/input/GestureEvent;->sceneX:D

    move-object v15, v8

    move-wide/from16 v16, v9

    move-wide/from16 v8, v16

    move-object v10, v15

    move-wide/from16 v11, v16

    iput-wide v11, v10, Ljavafx/scene/input/GestureEvent;->screenY:D

    move-object v15, v7

    move-wide/from16 v16, v8

    move-wide/from16 v7, v16

    move-object v9, v15

    move-wide/from16 v10, v16

    iput-wide v10, v9, Ljavafx/scene/input/GestureEvent;->screenX:D

    move-object v15, v6

    move-wide/from16 v16, v7

    move-wide/from16 v6, v16

    move-object v8, v15

    move-wide/from16 v9, v16

    iput-wide v9, v8, Ljavafx/scene/input/GestureEvent;->y:D

    iput-wide v6, v5, Ljavafx/scene/input/GestureEvent;->x:D

    .line 79
    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    const/4 v11, 0x0

    move-object v15, v10

    move/from16 v16, v11

    move/from16 v10, v16

    move-object v11, v15

    move/from16 v12, v16

    iput-boolean v12, v11, Ljavafx/scene/input/GestureEvent;->inertia:Z

    move-object v15, v9

    move/from16 v16, v10

    move/from16 v9, v16

    move-object v10, v15

    move/from16 v11, v16

    iput-boolean v11, v10, Ljavafx/scene/input/GestureEvent;->direct:Z

    move-object v15, v8

    move/from16 v16, v9

    move/from16 v8, v16

    move-object v9, v15

    move/from16 v10, v16

    iput-boolean v10, v9, Ljavafx/scene/input/GestureEvent;->metaDown:Z

    move-object v15, v7

    move/from16 v16, v8

    move/from16 v7, v16

    move-object v8, v15

    move/from16 v9, v16

    iput-boolean v9, v8, Ljavafx/scene/input/GestureEvent;->altDown:Z

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v6, v16

    move-object v7, v15

    move/from16 v8, v16

    iput-boolean v8, v7, Ljavafx/scene/input/GestureEvent;->controlDown:Z

    iput-boolean v6, v5, Ljavafx/scene/input/GestureEvent;->shiftDown:Z

    .line 80
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;DDDDZZZZZZLjavafx/scene/input/PickResult;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/event/EventTarget;",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/scene/input/GestureEvent;",
            ">;DDDDZZZZZZ",
            "Ljavafx/scene/input/PickResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/input/GestureEvent;
    move-object/from16 v4, p1

    .local v4, "source":Ljava/lang/Object;
    move-object/from16 v5, p2

    .local v5, "target":Ljavafx/event/EventTarget;
    move-object/from16 v6, p3

    .local v6, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/scene/input/GestureEvent;>;"
    move-wide/from16 v7, p4

    .local v7, "x":D
    move-wide/from16 v9, p6

    .local v9, "y":D
    move-wide/from16 v11, p8

    .local v11, "screenX":D
    move-wide/from16 v13, p10

    .local v13, "screenY":D
    move/from16 v15, p12

    .local v15, "shiftDown":Z
    move/from16 v16, p13

    .local v16, "controlDown":Z
    move/from16 v17, p14

    .local v17, "altDown":Z
    move/from16 v18, p15

    .local v18, "metaDown":Z
    move/from16 v19, p16

    .local v19, "direct":Z
    move/from16 v20, p17

    .local v20, "inertia":Z
    move-object/from16 v21, p18

    .local v21, "pickResult":Ljavafx/scene/input/PickResult;
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    invoke-direct/range {v23 .. v26}, Ljavafx/scene/input/InputEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 107
    move-object/from16 v23, v3

    move-wide/from16 v24, v7

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Ljavafx/scene/input/GestureEvent;->x:D

    .line 108
    move-object/from16 v23, v3

    move-wide/from16 v24, v9

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Ljavafx/scene/input/GestureEvent;->y:D

    .line 109
    move-object/from16 v23, v3

    move-wide/from16 v24, v11

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Ljavafx/scene/input/GestureEvent;->screenX:D

    .line 110
    move-object/from16 v23, v3

    move-wide/from16 v24, v13

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Ljavafx/scene/input/GestureEvent;->screenY:D

    .line 111
    move-object/from16 v23, v3

    move-wide/from16 v24, v7

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Ljavafx/scene/input/GestureEvent;->sceneX:D

    .line 112
    move-object/from16 v23, v3

    move-wide/from16 v24, v9

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Ljavafx/scene/input/GestureEvent;->sceneY:D

    .line 113
    move-object/from16 v23, v3

    move/from16 v24, v15

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Ljavafx/scene/input/GestureEvent;->shiftDown:Z

    .line 114
    move-object/from16 v23, v3

    move/from16 v24, v16

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Ljavafx/scene/input/GestureEvent;->controlDown:Z

    .line 115
    move-object/from16 v23, v3

    move/from16 v24, v17

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Ljavafx/scene/input/GestureEvent;->altDown:Z

    .line 116
    move-object/from16 v23, v3

    move/from16 v24, v18

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Ljavafx/scene/input/GestureEvent;->metaDown:Z

    .line 117
    move-object/from16 v23, v3

    move/from16 v24, v19

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Ljavafx/scene/input/GestureEvent;->direct:Z

    .line 118
    move-object/from16 v23, v3

    move/from16 v24, v20

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Ljavafx/scene/input/GestureEvent;->inertia:Z

    .line 119
    move-object/from16 v23, v3

    move-object/from16 v24, v21

    if-eqz v24, :cond_0

    move-object/from16 v24, v21

    :goto_0
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Ljavafx/scene/input/GestureEvent;->pickResult:Ljavafx/scene/input/PickResult;

    .line 120
    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/input/GestureEvent;->pickResult:Ljavafx/scene/input/PickResult;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lcom/sun/javafx/scene/input/InputEventUtils;->recomputeCoordinates(Ljavafx/scene/input/PickResult;Ljava/lang/Object;)Ljavafx/geometry/Point3D;

    move-result-object v23

    move-object/from16 v22, v23

    .line 121
    .local v22, "p":Ljavafx/geometry/Point3D;
    move-object/from16 v23, v3

    move-object/from16 v24, v22

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Ljavafx/scene/input/GestureEvent;->x:D

    .line 122
    move-object/from16 v23, v3

    move-object/from16 v24, v22

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Ljavafx/scene/input/GestureEvent;->y:D

    .line 123
    move-object/from16 v23, v3

    move-object/from16 v24, v22

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Ljavafx/scene/input/GestureEvent;->z:D

    .line 124
    return-void

    .line 119
    .end local v22    # "p":Ljavafx/geometry/Point3D;
    :cond_0
    new-instance v24, Ljavafx/scene/input/PickResult;

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    move-object/from16 v26, v5

    move-wide/from16 v27, v7

    move-wide/from16 v29, v9

    invoke-direct/range {v25 .. v30}, Ljavafx/scene/input/PickResult;-><init>(Ljavafx/event/EventTarget;DD)V

    goto :goto_0
.end method

.method protected constructor <init>(Ljavafx/event/EventType;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/scene/input/GestureEvent;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/input/GestureEvent;
    move-object/from16 v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/scene/input/GestureEvent;>;"
    move-object v2, v0

    move-object v3, v1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v18}, Ljavafx/scene/input/GestureEvent;-><init>(Ljavafx/event/EventType;DDDDZZZZZZLjavafx/scene/input/PickResult;)V

    .line 65
    return-void
.end method

.method protected constructor <init>(Ljavafx/event/EventType;DDDDZZZZZZLjavafx/scene/input/PickResult;)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/scene/input/GestureEvent;",
            ">;DDDDZZZZZZ",
            "Ljavafx/scene/input/PickResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/input/GestureEvent;
    move-object/from16 v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/scene/input/GestureEvent;>;"
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
    move-object/from16 v16, p16

    .local v16, "pickResult":Ljavafx/scene/input/PickResult;
    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v1

    move-wide/from16 v21, v2

    move-wide/from16 v23, v4

    move-wide/from16 v25, v6

    move-wide/from16 v27, v8

    move/from16 v29, v10

    move/from16 v30, v11

    move/from16 v31, v12

    move/from16 v32, v13

    move/from16 v33, v14

    move/from16 v34, v15

    move-object/from16 v35, v16

    invoke-direct/range {v17 .. v35}, Ljavafx/scene/input/GestureEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;DDDDZZZZZZLjavafx/scene/input/PickResult;)V

    .line 151
    return-void
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
    .line 441
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/input/GestureEvent;
    move-object v2, p1

    .local v2, "in":Ljava/io/ObjectInputStream;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 442
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/input/GestureEvent;->sceneX:D

    iput-wide v4, v3, Ljavafx/scene/input/GestureEvent;->x:D

    .line 443
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/input/GestureEvent;->sceneY:D

    iput-wide v4, v3, Ljavafx/scene/input/GestureEvent;->y:D

    .line 444
    return-void
.end method

.method private recomputeCoordinatesToSource(Ljavafx/scene/input/GestureEvent;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 161
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/input/GestureEvent;
    move-object v2, p1

    .local v2, "newEvent":Ljavafx/scene/input/GestureEvent;
    move-object v3, p2

    .local v3, "newSource":Ljava/lang/Object;
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/input/GestureEvent;->pickResult:Ljavafx/scene/input/PickResult;

    move-object v6, v3

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/input/InputEventUtils;->recomputeCoordinates(Ljavafx/scene/input/PickResult;Ljava/lang/Object;)Ljavafx/geometry/Point3D;

    move-result-object v5

    move-object v4, v5

    .line 164
    .local v4, "newCoordinates":Ljavafx/geometry/Point3D;
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v6

    iput-wide v6, v5, Ljavafx/scene/input/GestureEvent;->x:D

    .line 165
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    iput-wide v6, v5, Ljavafx/scene/input/GestureEvent;->y:D

    .line 166
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v6

    iput-wide v6, v5, Ljavafx/scene/input/GestureEvent;->z:D

    .line 167
    return-void
.end method


# virtual methods
.method public bridge synthetic copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/GestureEvent;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/input/GestureEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/GestureEvent;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/input/GestureEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/GestureEvent;
    .locals 7

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/GestureEvent;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Ljavafx/scene/input/InputEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;

    move-result-object v4

    check-cast v4, Ljavafx/scene/input/GestureEvent;

    move-object v3, v4

    .line 175
    .local v3, "e":Ljavafx/scene/input/GestureEvent;
    move-object v4, v0

    move-object v5, v3

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/input/GestureEvent;->recomputeCoordinatesToSource(Ljavafx/scene/input/GestureEvent;Ljava/lang/Object;)V

    .line 176
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/input/GestureEvent;
    return-object v0
.end method

.method public getEventType()Ljavafx/event/EventType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/scene/input/GestureEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/GestureEvent;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/input/InputEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/GestureEvent;
    return-object v0
.end method

.method public final getPickResult()Ljavafx/scene/input/PickResult;
    .locals 2

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/GestureEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/GestureEvent;->pickResult:Ljavafx/scene/input/PickResult;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/GestureEvent;
    return-object v0
.end method

.method public final getSceneX()D
    .locals 3

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/GestureEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/GestureEvent;->sceneX:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/GestureEvent;
    return-wide v0
.end method

.method public final getSceneY()D
    .locals 3

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/GestureEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/GestureEvent;->sceneY:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/GestureEvent;
    return-wide v0
.end method

.method public final getScreenX()D
    .locals 3

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/GestureEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/GestureEvent;->screenX:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/GestureEvent;
    return-wide v0
.end method

.method public final getScreenY()D
    .locals 3

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/GestureEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/GestureEvent;->screenY:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/GestureEvent;
    return-wide v0
.end method

.method public final getX()D
    .locals 3

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/GestureEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/GestureEvent;->x:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/GestureEvent;
    return-wide v0
.end method

.method public final getY()D
    .locals 3

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/GestureEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/GestureEvent;->y:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/GestureEvent;
    return-wide v0
.end method

.method public final getZ()D
    .locals 3

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/GestureEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/GestureEvent;->z:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/GestureEvent;
    return-wide v0
.end method

.method public final isAltDown()Z
    .locals 2

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/GestureEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/GestureEvent;->altDown:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/GestureEvent;
    return v0
.end method

.method public final isControlDown()Z
    .locals 2

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/GestureEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/GestureEvent;->controlDown:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/GestureEvent;
    return v0
.end method

.method public final isDirect()Z
    .locals 2

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/GestureEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/GestureEvent;->direct:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/GestureEvent;
    return v0
.end method

.method public isInertia()Z
    .locals 2

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/GestureEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/GestureEvent;->inertia:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/GestureEvent;
    return v0
.end method

.method public final isMetaDown()Z
    .locals 2

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/GestureEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/GestureEvent;->metaDown:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/GestureEvent;
    return v0
.end method

.method public final isShiftDown()Z
    .locals 2

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/GestureEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/GestureEvent;->shiftDown:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/GestureEvent;
    return v0
.end method

.method public final isShortcutDown()Z
    .locals 3

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/GestureEvent;
    sget-object v1, Ljavafx/scene/input/GestureEvent$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->getPlatformShortcutKey()Ljavafx/scene/input/KeyCode;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 395
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/GestureEvent;
    :goto_0
    return v0

    .line 383
    .restart local v0    # "this":Ljavafx/scene/input/GestureEvent;
    :pswitch_0
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/GestureEvent;->shiftDown:Z

    move v0, v1

    goto :goto_0

    .line 386
    :pswitch_1
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/GestureEvent;->controlDown:Z

    move v0, v1

    goto :goto_0

    .line 389
    :pswitch_2
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/GestureEvent;->altDown:Z

    move v0, v1

    goto :goto_0

    .line 392
    :pswitch_3
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/GestureEvent;->metaDown:Z

    move v0, v1

    goto :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 404
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/input/GestureEvent;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "GestureEvent ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 406
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string v4, "source = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/GestureEvent;->getSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 407
    move-object v3, v2

    const-string v4, ", target = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/GestureEvent;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 408
    move-object v3, v2

    const-string v4, ", eventType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/GestureEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 409
    move-object v3, v2

    const-string v4, ", consumed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/GestureEvent;->isConsumed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 411
    move-object v3, v2

    const-string v4, ", x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/GestureEvent;->getX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/GestureEvent;->getY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", z = "

    .line 412
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/GestureEvent;->getZ()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 413
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/GestureEvent;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, ", direct"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 415
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/GestureEvent;->isInertia()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    move-object v3, v2

    const-string v4, ", inertia"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 419
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/GestureEvent;->isShiftDown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 420
    move-object v3, v2

    const-string v4, ", shiftDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 422
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/GestureEvent;->isControlDown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 423
    move-object v3, v2

    const-string v4, ", controlDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 425
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/GestureEvent;->isAltDown()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 426
    move-object v3, v2

    const-string v4, ", altDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 428
    :cond_3
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/GestureEvent;->isMetaDown()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 429
    move-object v3, v2

    const-string v4, ", metaDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 431
    :cond_4
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/GestureEvent;->isShortcutDown()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 432
    move-object v3, v2

    const-string v4, ", shortcutDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 434
    :cond_5
    move-object v3, v2

    const-string v4, ", pickResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/GestureEvent;->getPickResult()Ljavafx/scene/input/PickResult;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 436
    move-object v3, v2

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/input/GestureEvent;
    return-object v1

    .line 413
    .restart local v1    # "this":Ljavafx/scene/input/GestureEvent;
    :cond_6
    const-string v4, ", indirect"

    goto :goto_0
.end method
