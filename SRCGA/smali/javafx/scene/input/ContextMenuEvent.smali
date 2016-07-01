.class public Ljavafx/scene/input/ContextMenuEvent;
.super Ljavafx/scene/input/InputEvent;
.source "ContextMenuEvent.java"


# static fields
.field public static final ANY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/ContextMenuEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTEXT_MENU_REQUESTED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/ContextMenuEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1330613L


# instance fields
.field private final keyboardTrigger:Z

.field private pickResult:Ljavafx/scene/input/PickResult;

.field private final sceneX:D

.field private final sceneY:D

.field private final screenX:D

.field private final screenY:D

.field private transient x:D

.field private transient y:D

.field private transient z:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 57
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/InputEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "CONTEXTMENUREQUESTED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/ContextMenuEvent;->CONTEXT_MENU_REQUESTED:Ljavafx/event/EventType;

    .line 64
    sget-object v0, Ljavafx/scene/input/ContextMenuEvent;->CONTEXT_MENU_REQUESTED:Ljavafx/event/EventType;

    sput-object v0, Ljavafx/scene/input/ContextMenuEvent;->ANY:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;DDDDZLjavafx/scene/input/PickResult;)V
    .locals 28
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
            value = "keyboardTrigger"
        .end annotation
    .end param
    .param p13    # Ljavafx/scene/input/PickResult;
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
            "Ljavafx/scene/input/ContextMenuEvent;",
            ">;DDDDZ",
            "Ljavafx/scene/input/PickResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    move-object/from16 v4, p0

    .local v4, "this":Ljavafx/scene/input/ContextMenuEvent;
    move-object/from16 v5, p1

    .local v5, "source":Ljava/lang/Object;
    move-object/from16 v6, p2

    .local v6, "target":Ljavafx/event/EventTarget;
    move-object/from16 v7, p3

    .local v7, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/ContextMenuEvent;>;"
    move-wide/from16 v8, p4

    .local v8, "x":D
    move-wide/from16 v10, p6

    .local v10, "y":D
    move-wide/from16 v12, p8

    .local v12, "screenX":D
    move-wide/from16 v14, p10

    .local v14, "screenY":D
    move/from16 v16, p12

    .local v16, "keyboardTrigger":Z
    move-object/from16 v17, p13

    .local v17, "pickResult":Ljavafx/scene/input/PickResult;
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    invoke-direct/range {v19 .. v22}, Ljavafx/scene/input/InputEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 85
    move-object/from16 v19, v4

    move-wide/from16 v20, v12

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Ljavafx/scene/input/ContextMenuEvent;->screenX:D

    .line 86
    move-object/from16 v19, v4

    move-wide/from16 v20, v14

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Ljavafx/scene/input/ContextMenuEvent;->screenY:D

    .line 87
    move-object/from16 v19, v4

    move-wide/from16 v20, v8

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Ljavafx/scene/input/ContextMenuEvent;->sceneX:D

    .line 88
    move-object/from16 v19, v4

    move-wide/from16 v20, v10

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Ljavafx/scene/input/ContextMenuEvent;->sceneY:D

    .line 89
    move-object/from16 v19, v4

    move-wide/from16 v20, v8

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Ljavafx/scene/input/ContextMenuEvent;->x:D

    .line 90
    move-object/from16 v19, v4

    move-wide/from16 v20, v10

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Ljavafx/scene/input/ContextMenuEvent;->y:D

    .line 91
    move-object/from16 v19, v4

    move-object/from16 v20, v17

    if-eqz v20, :cond_0

    move-object/from16 v20, v17

    :goto_0
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavafx/scene/input/ContextMenuEvent;->pickResult:Ljavafx/scene/input/PickResult;

    .line 92
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/input/ContextMenuEvent;->pickResult:Ljavafx/scene/input/PickResult;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/sun/javafx/scene/input/InputEventUtils;->recomputeCoordinates(Ljavafx/scene/input/PickResult;Ljava/lang/Object;)Ljavafx/geometry/Point3D;

    move-result-object v19

    move-object/from16 v18, v19

    .line 93
    .local v18, "p":Ljavafx/geometry/Point3D;
    move-object/from16 v19, v4

    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Ljavafx/scene/input/ContextMenuEvent;->x:D

    .line 94
    move-object/from16 v19, v4

    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Ljavafx/scene/input/ContextMenuEvent;->y:D

    .line 95
    move-object/from16 v19, v4

    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Ljavafx/scene/input/ContextMenuEvent;->z:D

    .line 96
    move-object/from16 v19, v4

    move/from16 v20, v16

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Ljavafx/scene/input/ContextMenuEvent;->keyboardTrigger:Z

    .line 97
    return-void

    .line 91
    .end local v18    # "p":Ljavafx/geometry/Point3D;
    :cond_0
    new-instance v20, Ljavafx/scene/input/PickResult;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    move-object/from16 v22, v6

    move-wide/from16 v23, v8

    move-wide/from16 v25, v10

    invoke-direct/range {v21 .. v26}, Ljavafx/scene/input/PickResult;-><init>(Ljavafx/event/EventTarget;DD)V

    goto :goto_0
.end method

.method public constructor <init>(Ljavafx/event/EventType;DDDDZLjavafx/scene/input/PickResult;)V
    .locals 26
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
            value = "keyboardTrigger"
        .end annotation
    .end param
    .param p11    # Ljavafx/scene/input/PickResult;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "pickResult"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/ContextMenuEvent;",
            ">;DDDDZ",
            "Ljavafx/scene/input/PickResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/input/ContextMenuEvent;
    move-object/from16 v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/ContextMenuEvent;>;"
    move-wide/from16 v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    move-wide/from16 v6, p6

    .local v6, "screenX":D
    move-wide/from16 v8, p8

    .local v8, "screenY":D
    move/from16 v10, p10

    .local v10, "keyboardTrigger":Z
    move-object/from16 v11, p11

    .local v11, "pickResult":Ljavafx/scene/input/PickResult;
    move-object v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v15, v1

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move/from16 v24, v10

    move-object/from16 v25, v11

    invoke-direct/range {v12 .. v25}, Ljavafx/scene/input/ContextMenuEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;DDDDZLjavafx/scene/input/PickResult;)V

    .line 117
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
    .line 334
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/input/ContextMenuEvent;
    move-object v2, p1

    .local v2, "in":Ljava/io/ObjectInputStream;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 335
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/input/ContextMenuEvent;->sceneX:D

    iput-wide v4, v3, Ljavafx/scene/input/ContextMenuEvent;->x:D

    .line 336
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/input/ContextMenuEvent;->sceneY:D

    iput-wide v4, v3, Ljavafx/scene/input/ContextMenuEvent;->y:D

    .line 337
    return-void
.end method

.method private recomputeCoordinatesToSource(Ljavafx/scene/input/ContextMenuEvent;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 127
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/input/ContextMenuEvent;
    move-object v2, p1

    .local v2, "newEvent":Ljavafx/scene/input/ContextMenuEvent;
    move-object v3, p2

    .local v3, "newSource":Ljava/lang/Object;
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/input/ContextMenuEvent;->pickResult:Ljavafx/scene/input/PickResult;

    move-object v6, v3

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/input/InputEventUtils;->recomputeCoordinates(Ljavafx/scene/input/PickResult;Ljava/lang/Object;)Ljavafx/geometry/Point3D;

    move-result-object v5

    move-object v4, v5

    .line 130
    .local v4, "newCoordinates":Ljavafx/geometry/Point3D;
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v6

    iput-wide v6, v5, Ljavafx/scene/input/ContextMenuEvent;->x:D

    .line 131
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    iput-wide v6, v5, Ljavafx/scene/input/ContextMenuEvent;->y:D

    .line 132
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v6

    iput-wide v6, v5, Ljavafx/scene/input/ContextMenuEvent;->z:D

    .line 133
    return-void
.end method


# virtual methods
.method public bridge synthetic copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ContextMenuEvent;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/input/ContextMenuEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/ContextMenuEvent;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/input/ContextMenuEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/ContextMenuEvent;
    .locals 7

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ContextMenuEvent;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Ljavafx/scene/input/InputEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;

    move-result-object v4

    check-cast v4, Ljavafx/scene/input/ContextMenuEvent;

    move-object v3, v4

    .line 138
    .local v3, "e":Ljavafx/scene/input/ContextMenuEvent;
    move-object v4, v0

    move-object v5, v3

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/input/ContextMenuEvent;->recomputeCoordinatesToSource(Ljavafx/scene/input/ContextMenuEvent;Ljava/lang/Object;)V

    .line 139
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/input/ContextMenuEvent;
    return-object v0
.end method

.method public getEventType()Ljavafx/event/EventType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/ContextMenuEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ContextMenuEvent;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/input/InputEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ContextMenuEvent;
    return-object v0
.end method

.method public final getPickResult()Ljavafx/scene/input/PickResult;
    .locals 2

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ContextMenuEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/ContextMenuEvent;->pickResult:Ljavafx/scene/input/PickResult;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ContextMenuEvent;
    return-object v0
.end method

.method public final getSceneX()D
    .locals 3

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ContextMenuEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/ContextMenuEvent;->sceneX:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ContextMenuEvent;
    return-wide v0
.end method

.method public final getSceneY()D
    .locals 3

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ContextMenuEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/ContextMenuEvent;->sceneY:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ContextMenuEvent;
    return-wide v0
.end method

.method public final getScreenX()D
    .locals 3

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ContextMenuEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/ContextMenuEvent;->screenX:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ContextMenuEvent;
    return-wide v0
.end method

.method public final getScreenY()D
    .locals 3

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ContextMenuEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/ContextMenuEvent;->screenY:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ContextMenuEvent;
    return-wide v0
.end method

.method public final getX()D
    .locals 3

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ContextMenuEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/ContextMenuEvent;->x:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ContextMenuEvent;
    return-wide v0
.end method

.method public final getY()D
    .locals 3

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ContextMenuEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/ContextMenuEvent;->y:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ContextMenuEvent;
    return-wide v0
.end method

.method public final getZ()D
    .locals 3

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ContextMenuEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/ContextMenuEvent;->z:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ContextMenuEvent;
    return-wide v0
.end method

.method public isKeyboardTrigger()Z
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ContextMenuEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/ContextMenuEvent;->keyboardTrigger:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ContextMenuEvent;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 318
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/input/ContextMenuEvent;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "ContextMenuEvent ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 320
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string v4, "source = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ContextMenuEvent;->getSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 321
    move-object v3, v2

    const-string v4, ", target = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ContextMenuEvent;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 322
    move-object v3, v2

    const-string v4, ", eventType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ContextMenuEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 323
    move-object v3, v2

    const-string v4, ", consumed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ContextMenuEvent;->isConsumed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 325
    move-object v3, v2

    const-string v4, ", x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ContextMenuEvent;->getX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ContextMenuEvent;->getY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", z = "

    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ContextMenuEvent;->getZ()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 327
    move-object v3, v2

    const-string v4, ", pickResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ContextMenuEvent;->getPickResult()Ljavafx/scene/input/PickResult;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 329
    move-object v3, v2

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/input/ContextMenuEvent;
    return-object v1
.end method
