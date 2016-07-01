.class public final Ljavafx/scene/input/DragEvent;
.super Ljavafx/scene/input/InputEvent;
.source "DragEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/input/DragEvent$State;
    }
.end annotation


# static fields
.field public static final ANY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DRAG_DONE:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DRAG_DROPPED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DRAG_ENTERED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DRAG_ENTERED_TARGET:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DRAG_EXITED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DRAG_EXITED_TARGET:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DRAG_OVER:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1330613L


# instance fields
.field private transient dragboard:Ljavafx/scene/input/Dragboard;

.field private gestureSource:Ljava/lang/Object;

.field private gestureTarget:Ljava/lang/Object;

.field private pickResult:Ljavafx/scene/input/PickResult;

.field private final sceneX:D

.field private final sceneY:D

.field private final screenX:D

.field private final screenY:D

.field private final state:Ljavafx/scene/input/DragEvent$State;

.field private transferMode:Ljavafx/scene/input/TransferMode;

.field private transient x:D

.field private transient y:D

.field private transient z:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 212
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/InputEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "DRAG"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/DragEvent;->ANY:Ljavafx/event/EventType;

    .line 225
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/DragEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "DRAG_ENTERED_TARGET"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/DragEvent;->DRAG_ENTERED_TARGET:Ljavafx/event/EventType;

    .line 237
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/DragEvent;->DRAG_ENTERED_TARGET:Ljavafx/event/EventType;

    const-string v3, "DRAG_ENTERED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/DragEvent;->DRAG_ENTERED:Ljavafx/event/EventType;

    .line 250
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/DragEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "DRAG_EXITED_TARGET"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/DragEvent;->DRAG_EXITED_TARGET:Ljavafx/event/EventType;

    .line 262
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/DragEvent;->DRAG_EXITED_TARGET:Ljavafx/event/EventType;

    const-string v3, "DRAG_EXITED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/DragEvent;->DRAG_EXITED:Ljavafx/event/EventType;

    .line 268
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/DragEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "DRAG_OVER"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/DragEvent;->DRAG_OVER:Ljavafx/event/EventType;

    .line 287
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/DragEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "DRAG_DROPPED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/DragEvent;->DRAG_DROPPED:Ljavafx/event/EventType;

    .line 300
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/DragEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "DRAG_DONE"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/DragEvent;->DRAG_DONE:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljavafx/scene/input/Dragboard;DDDDLjavafx/scene/input/TransferMode;Ljava/lang/Object;Ljava/lang/Object;Ljavafx/scene/input/PickResult;)V
    .locals 31
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
    .param p4    # Ljavafx/scene/input/Dragboard;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "dragboard"
        .end annotation
    .end param
    .param p5    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "x"
        .end annotation
    .end param
    .param p7    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "y"
        .end annotation
    .end param
    .param p9    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "screenX"
        .end annotation
    .end param
    .param p11    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "screenY"
        .end annotation
    .end param
    .param p13    # Ljavafx/scene/input/TransferMode;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "transferMode"
        .end annotation
    .end param
    .param p14    # Ljava/lang/Object;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "gestureSource"
        .end annotation
    .end param
    .param p15    # Ljava/lang/Object;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "gestureTarget"
        .end annotation
    .end param
    .param p16    # Ljavafx/scene/input/PickResult;
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
            "Ljavafx/scene/input/DragEvent;",
            ">;",
            "Ljavafx/scene/input/Dragboard;",
            "DDDD",
            "Ljavafx/scene/input/TransferMode;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljavafx/scene/input/PickResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 349
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/input/DragEvent;
    move-object/from16 v4, p1

    .local v4, "source":Ljava/lang/Object;
    move-object/from16 v5, p2

    .local v5, "target":Ljavafx/event/EventTarget;
    move-object/from16 v6, p3

    .local v6, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/DragEvent;>;"
    move-object/from16 v7, p4

    .local v7, "dragboard":Ljavafx/scene/input/Dragboard;
    move-wide/from16 v8, p5

    .local v8, "x":D
    move-wide/from16 v10, p7

    .local v10, "y":D
    move-wide/from16 v12, p9

    .local v12, "screenX":D
    move-wide/from16 v14, p11

    .local v14, "screenY":D
    move-object/from16 v16, p13

    .local v16, "transferMode":Ljavafx/scene/input/TransferMode;
    move-object/from16 v17, p14

    .local v17, "gestureSource":Ljava/lang/Object;
    move-object/from16 v18, p15

    .local v18, "gestureTarget":Ljava/lang/Object;
    move-object/from16 v19, p16

    .local v19, "pickResult":Ljavafx/scene/input/PickResult;
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    invoke-direct/range {v21 .. v24}, Ljavafx/scene/input/InputEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 617
    move-object/from16 v21, v3

    new-instance v22, Ljavafx/scene/input/DragEvent$State;

    move-object/from16 v29, v22

    move-object/from16 v22, v29

    move-object/from16 v23, v29

    const/16 v24, 0x0

    invoke-direct/range {v23 .. v24}, Ljavafx/scene/input/DragEvent$State;-><init>(Ljavafx/scene/input/DragEvent$1;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Ljavafx/scene/input/DragEvent;->state:Ljavafx/scene/input/DragEvent$State;

    .line 350
    move-object/from16 v21, v3

    move-object/from16 v22, v17

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Ljavafx/scene/input/DragEvent;->gestureSource:Ljava/lang/Object;

    .line 351
    move-object/from16 v21, v3

    move-object/from16 v22, v18

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Ljavafx/scene/input/DragEvent;->gestureTarget:Ljava/lang/Object;

    .line 352
    move-object/from16 v21, v3

    move-wide/from16 v22, v8

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Ljavafx/scene/input/DragEvent;->x:D

    .line 353
    move-object/from16 v21, v3

    move-wide/from16 v22, v10

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Ljavafx/scene/input/DragEvent;->y:D

    .line 354
    move-object/from16 v21, v3

    move-wide/from16 v22, v12

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Ljavafx/scene/input/DragEvent;->screenX:D

    .line 355
    move-object/from16 v21, v3

    move-wide/from16 v22, v14

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Ljavafx/scene/input/DragEvent;->screenY:D

    .line 356
    move-object/from16 v21, v3

    move-wide/from16 v22, v8

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Ljavafx/scene/input/DragEvent;->sceneX:D

    .line 357
    move-object/from16 v21, v3

    move-wide/from16 v22, v10

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Ljavafx/scene/input/DragEvent;->sceneY:D

    .line 358
    move-object/from16 v21, v3

    move-object/from16 v22, v16

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Ljavafx/scene/input/DragEvent;->transferMode:Ljavafx/scene/input/TransferMode;

    .line 359
    move-object/from16 v21, v3

    move-object/from16 v22, v7

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Ljavafx/scene/input/DragEvent;->dragboard:Ljavafx/scene/input/Dragboard;

    .line 361
    move-object/from16 v21, v6

    sget-object v22, Ljavafx/scene/input/DragEvent;->DRAG_DROPPED:Ljavafx/event/EventType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_0

    move-object/from16 v21, v6

    sget-object v22, Ljavafx/scene/input/DragEvent;->DRAG_DONE:Ljavafx/event/EventType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 363
    :cond_0
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/scene/input/DragEvent;->state:Ljavafx/scene/input/DragEvent$State;

    move-object/from16 v21, v0

    move-object/from16 v22, v16

    if-eqz v22, :cond_2

    const/16 v22, 0x1

    :goto_0
    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Ljavafx/scene/input/DragEvent$State;->accepted:Z

    .line 364
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/scene/input/DragEvent;->state:Ljavafx/scene/input/DragEvent$State;

    move-object/from16 v21, v0

    move-object/from16 v22, v16

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Ljavafx/scene/input/DragEvent$State;->acceptedTrasferMode:Ljavafx/scene/input/TransferMode;

    .line 367
    :cond_1
    move-object/from16 v21, v3

    move-object/from16 v22, v19

    if-eqz v22, :cond_3

    move-object/from16 v22, v19

    :goto_1
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Ljavafx/scene/input/DragEvent;->pickResult:Ljavafx/scene/input/PickResult;

    .line 369
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/scene/input/DragEvent;->pickResult:Ljavafx/scene/input/PickResult;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/sun/javafx/scene/input/InputEventUtils;->recomputeCoordinates(Ljavafx/scene/input/PickResult;Ljava/lang/Object;)Ljavafx/geometry/Point3D;

    move-result-object v21

    move-object/from16 v20, v21

    .line 370
    .local v20, "p":Ljavafx/geometry/Point3D;
    move-object/from16 v21, v3

    move-object/from16 v22, v20

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Ljavafx/scene/input/DragEvent;->x:D

    .line 371
    move-object/from16 v21, v3

    move-object/from16 v22, v20

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Ljavafx/scene/input/DragEvent;->y:D

    .line 372
    move-object/from16 v21, v3

    move-object/from16 v22, v20

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Ljavafx/scene/input/DragEvent;->z:D

    .line 373
    return-void

    .line 363
    .end local v20    # "p":Ljavafx/geometry/Point3D;
    :cond_2
    const/16 v22, 0x0

    goto :goto_0

    .line 367
    :cond_3
    new-instance v22, Ljavafx/scene/input/PickResult;

    move-object/from16 v29, v22

    move-object/from16 v22, v29

    move-object/from16 v23, v29

    move-object/from16 v24, v6

    sget-object v25, Ljavafx/scene/input/DragEvent;->DRAG_DONE:Ljavafx/event/EventType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_4

    const/16 v24, 0x0

    :goto_2
    move-wide/from16 v25, v8

    move-wide/from16 v27, v10

    invoke-direct/range {v23 .. v28}, Ljavafx/scene/input/PickResult;-><init>(Ljavafx/event/EventTarget;DD)V

    goto :goto_1

    :cond_4
    move-object/from16 v24, v5

    goto :goto_2
.end method

.method public constructor <init>(Ljavafx/event/EventType;Ljavafx/scene/input/Dragboard;DDDDLjavafx/scene/input/TransferMode;Ljava/lang/Object;Ljava/lang/Object;Ljavafx/scene/input/PickResult;)V
    .locals 33
    .param p1    # Ljavafx/event/EventType;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "eventType"
        .end annotation
    .end param
    .param p2    # Ljavafx/scene/input/Dragboard;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "dragboard"
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
    .param p11    # Ljavafx/scene/input/TransferMode;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "transferMode"
        .end annotation
    .end param
    .param p12    # Ljava/lang/Object;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "gestureSource"
        .end annotation
    .end param
    .param p13    # Ljava/lang/Object;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "gestureTarget"
        .end annotation
    .end param
    .param p14    # Ljavafx/scene/input/PickResult;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "pickResult"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/DragEvent;",
            ">;",
            "Ljavafx/scene/input/Dragboard;",
            "DDDD",
            "Ljavafx/scene/input/TransferMode;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljavafx/scene/input/PickResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 395
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object/from16 v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/DragEvent;>;"
    move-object/from16 v2, p2

    .local v2, "dragboard":Ljavafx/scene/input/Dragboard;
    move-wide/from16 v3, p3

    .local v3, "x":D
    move-wide/from16 v5, p5

    .local v5, "y":D
    move-wide/from16 v7, p7

    .local v7, "screenX":D
    move-wide/from16 v9, p9

    .local v9, "screenY":D
    move-object/from16 v11, p11

    .local v11, "transferMode":Ljavafx/scene/input/TransferMode;
    move-object/from16 v12, p12

    .local v12, "gestureSource":Ljava/lang/Object;
    move-object/from16 v13, p13

    .local v13, "gestureTarget":Ljava/lang/Object;
    move-object/from16 v14, p14

    .local v14, "pickResult":Ljavafx/scene/input/PickResult;
    move-object v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-wide/from16 v20, v3

    move-wide/from16 v22, v5

    move-wide/from16 v24, v7

    move-wide/from16 v26, v9

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    invoke-direct/range {v15 .. v31}, Ljavafx/scene/input/DragEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljavafx/scene/input/Dragboard;DDDDLjavafx/scene/input/TransferMode;Ljava/lang/Object;Ljava/lang/Object;Ljavafx/scene/input/PickResult;)V

    .line 397
    return-void
.end method

.method private static chooseTransferMode(Ljava/util/Set;[Ljavafx/scene/input/TransferMode;Ljavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/input/TransferMode;",
            ">;[",
            "Ljavafx/scene/input/TransferMode;",
            "Ljavafx/scene/input/TransferMode;",
            ")",
            "Ljavafx/scene/input/TransferMode;"
        }
    .end annotation

    .prologue
    .line 664
    move-object v0, p0

    .local v0, "supported":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/input/TransferMode;>;"
    move-object v1, p1

    .local v1, "accepted":[Ljavafx/scene/input/TransferMode;
    move-object v2, p2

    .local v2, "proposed":Ljavafx/scene/input/TransferMode;
    const/4 v7, 0x0

    move-object v3, v7

    .line 665
    .local v3, "result":Ljavafx/scene/input/TransferMode;
    const-class v7, Ljavafx/scene/input/TransferMode;

    invoke-static {v7}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v7

    move-object v4, v7

    .line 667
    .local v4, "intersect":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/input/TransferMode;>;"
    move-object v7, v1

    invoke-static {v7}, Lcom/sun/javafx/scene/input/InputEventUtils;->safeTransferModes([Ljavafx/scene/input/TransferMode;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_0
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/input/TransferMode;

    move-object v6, v7

    .line 668
    .local v6, "tm":Ljavafx/scene/input/TransferMode;
    move-object v7, v0

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 669
    move-object v7, v4

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 671
    :cond_0
    goto :goto_0

    .line 673
    .end local v6    # "tm":Ljavafx/scene/input/TransferMode;
    :cond_1
    move-object v7, v4

    move-object v8, v2

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 674
    move-object v7, v2

    move-object v3, v7

    .line 685
    :cond_2
    :goto_1
    move-object v7, v3

    move-object v0, v7

    .end local v0    # "supported":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/input/TransferMode;>;"
    return-object v0

    .line 676
    .restart local v0    # "supported":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/input/TransferMode;>;"
    :cond_3
    move-object v7, v4

    sget-object v8, Ljavafx/scene/input/TransferMode;->MOVE:Ljavafx/scene/input/TransferMode;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 677
    sget-object v7, Ljavafx/scene/input/TransferMode;->MOVE:Ljavafx/scene/input/TransferMode;

    move-object v3, v7

    goto :goto_1

    .line 678
    :cond_4
    move-object v7, v4

    sget-object v8, Ljavafx/scene/input/TransferMode;->COPY:Ljavafx/scene/input/TransferMode;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 679
    sget-object v7, Ljavafx/scene/input/TransferMode;->COPY:Ljavafx/scene/input/TransferMode;

    move-object v3, v7

    goto :goto_1

    .line 680
    :cond_5
    move-object v7, v4

    sget-object v8, Ljavafx/scene/input/TransferMode;->LINK:Ljavafx/scene/input/TransferMode;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 681
    sget-object v7, Ljavafx/scene/input/TransferMode;->LINK:Ljavafx/scene/input/TransferMode;

    move-object v3, v7

    goto :goto_1
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
    .line 748
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/input/DragEvent;
    move-object v2, p1

    .local v2, "in":Ljava/io/ObjectInputStream;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 749
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/input/DragEvent;->sceneX:D

    iput-wide v4, v3, Ljavafx/scene/input/DragEvent;->x:D

    .line 750
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/input/DragEvent;->sceneY:D

    iput-wide v4, v3, Ljavafx/scene/input/DragEvent;->y:D

    .line 751
    return-void
.end method

.method private recomputeCoordinatesToSource(Ljavafx/scene/input/DragEvent;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 407
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/input/DragEvent;
    move-object v2, p1

    .local v2, "newEvent":Ljavafx/scene/input/DragEvent;
    move-object v3, p2

    .local v3, "newSource":Ljava/lang/Object;
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/input/DragEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/DragEvent;->DRAG_DONE:Ljavafx/event/EventType;

    if-ne v5, v6, :cond_0

    .line 409
    .line 418
    :goto_0
    return-void

    .line 412
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/input/DragEvent;->pickResult:Ljavafx/scene/input/PickResult;

    move-object v6, v3

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/input/InputEventUtils;->recomputeCoordinates(Ljavafx/scene/input/PickResult;Ljava/lang/Object;)Ljavafx/geometry/Point3D;

    move-result-object v5

    move-object v4, v5

    .line 415
    .local v4, "newCoordinates":Ljavafx/geometry/Point3D;
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v6

    iput-wide v6, v5, Ljavafx/scene/input/DragEvent;->x:D

    .line 416
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    iput-wide v6, v5, Ljavafx/scene/input/DragEvent;->y:D

    .line 417
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v6

    iput-wide v6, v5, Ljavafx/scene/input/DragEvent;->z:D

    .line 418
    goto :goto_0
.end method


# virtual methods
.method public varargs acceptTransferModes([Ljavafx/scene/input/TransferMode;)V
    .locals 7

    .prologue
    .line 702
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, p1

    .local v1, "transferModes":[Ljavafx/scene/input/TransferMode;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/DragEvent;->dragboard:Ljavafx/scene/input/Dragboard;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/DragEvent;->dragboard:Ljavafx/scene/input/Dragboard;

    invoke-virtual {v3}, Ljavafx/scene/input/Dragboard;->getTransferModes()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/DragEvent;->transferMode:Ljavafx/scene/input/TransferMode;

    if-nez v3, :cond_1

    .line 704
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/DragEvent;->state:Ljavafx/scene/input/DragEvent$State;

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/input/DragEvent$State;->accepted:Z

    .line 705
    .line 719
    :goto_0
    return-void

    .line 708
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/DragEvent;->dragboard:Ljavafx/scene/input/Dragboard;

    invoke-virtual {v3}, Ljavafx/scene/input/Dragboard;->getTransferModes()Ljava/util/Set;

    move-result-object v3

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/input/DragEvent;->transferMode:Ljavafx/scene/input/TransferMode;

    invoke-static {v3, v4, v5}, Ljavafx/scene/input/DragEvent;->chooseTransferMode(Ljava/util/Set;[Ljavafx/scene/input/TransferMode;Ljavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;

    move-result-object v3

    move-object v2, v3

    .line 711
    .local v2, "tm":Ljavafx/scene/input/TransferMode;
    move-object v3, v2

    if-nez v3, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/DragEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/DragEvent;->DRAG_DROPPED:Ljavafx/event/EventType;

    if-ne v3, v4, :cond_2

    .line 712
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Accepting unsupported transfer modes inside DRAG_DROPPED handler"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 716
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/DragEvent;->state:Ljavafx/scene/input/DragEvent$State;

    move-object v4, v2

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Ljavafx/scene/input/DragEvent$State;->accepted:Z

    .line 717
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/DragEvent;->state:Ljavafx/scene/input/DragEvent$State;

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/input/DragEvent$State;->acceptedTrasferMode:Ljavafx/scene/input/TransferMode;

    .line 718
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/DragEvent;->state:Ljavafx/scene/input/DragEvent$State;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/input/DragEvent;->state:Ljavafx/scene/input/DragEvent$State;

    iget-boolean v4, v4, Ljavafx/scene/input/DragEvent$State;->accepted:Z

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/input/DragEvent;->source:Ljava/lang/Object;

    :goto_2
    iput-object v4, v3, Ljavafx/scene/input/DragEvent$State;->acceptingObject:Ljava/lang/Object;

    .line 719
    goto :goto_0

    .line 716
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 718
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public bridge synthetic copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/input/DragEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/DragEvent;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/input/DragEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/DragEvent;
    .locals 7

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Ljavafx/scene/input/InputEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;

    move-result-object v4

    check-cast v4, Ljavafx/scene/input/DragEvent;

    move-object v3, v4

    .line 423
    .local v3, "e":Ljavafx/scene/input/DragEvent;
    move-object v4, v0

    move-object v5, v3

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/input/DragEvent;->recomputeCoordinatesToSource(Ljavafx/scene/input/DragEvent;Ljava/lang/Object;)V

    .line 424
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/input/DragEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljava/lang/Object;Ljava/lang/Object;Ljavafx/event/EventType;)Ljavafx/scene/input/DragEvent;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/event/EventTarget;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/DragEvent;",
            ">;)",
            "Ljavafx/scene/input/DragEvent;"
        }
    .end annotation

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, p1

    .local v1, "source":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "target":Ljavafx/event/EventTarget;
    move-object v3, p3

    .local v3, "gestureSource":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "gestureTarget":Ljava/lang/Object;
    move-object/from16 v5, p5

    .local v5, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/DragEvent;>;"
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v5

    invoke-virtual {v7, v8, v9, v10}, Ljavafx/scene/input/DragEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/DragEvent;

    move-result-object v7

    move-object v6, v7

    .line 318
    .local v6, "copyEvent":Ljavafx/scene/input/DragEvent;
    move-object v7, v0

    move-object v8, v6

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Ljavafx/scene/input/DragEvent;->recomputeCoordinatesToSource(Ljavafx/scene/input/DragEvent;Ljava/lang/Object;)V

    .line 319
    move-object v7, v6

    move-object v8, v3

    iput-object v8, v7, Ljavafx/scene/input/DragEvent;->gestureSource:Ljava/lang/Object;

    .line 320
    move-object v7, v6

    move-object v8, v4

    iput-object v8, v7, Ljavafx/scene/input/DragEvent;->gestureTarget:Ljava/lang/Object;

    .line 321
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "this":Ljavafx/scene/input/DragEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/DragEvent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/event/EventTarget;",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/DragEvent;",
            ">;)",
            "Ljavafx/scene/input/DragEvent;"
        }
    .end annotation

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, p1

    .local v1, "source":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "target":Ljavafx/event/EventTarget;
    move-object v3, p3

    .local v3, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/DragEvent;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/input/DragEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/DragEvent;

    move-result-object v5

    move-object v4, v5

    .line 437
    .local v4, "e":Ljavafx/scene/input/DragEvent;
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Ljavafx/scene/input/DragEvent;->eventType:Ljavafx/event/EventType;

    .line 438
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/input/DragEvent;
    return-object v0
.end method

.method public final getAcceptedTransferMode()Ljavafx/scene/input/TransferMode;
    .locals 2

    .prologue
    .line 631
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/DragEvent;->state:Ljavafx/scene/input/DragEvent$State;

    iget-object v1, v1, Ljavafx/scene/input/DragEvent$State;->acceptedTrasferMode:Ljavafx/scene/input/TransferMode;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/DragEvent;
    return-object v0
.end method

.method public final getAcceptingObject()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 640
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/DragEvent;->state:Ljavafx/scene/input/DragEvent$State;

    iget-object v1, v1, Ljavafx/scene/input/DragEvent$State;->acceptingObject:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/DragEvent;
    return-object v0
.end method

.method public final getDragboard()Ljavafx/scene/input/Dragboard;
    .locals 2

    .prologue
    .line 650
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/DragEvent;->dragboard:Ljavafx/scene/input/Dragboard;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/DragEvent;
    return-object v0
.end method

.method public getEventType()Ljavafx/event/EventType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/DragEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/input/InputEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/DragEvent;
    return-object v0
.end method

.method public final getGestureSource()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 592
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/DragEvent;->gestureSource:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/DragEvent;
    return-object v0
.end method

.method public final getGestureTarget()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 602
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/DragEvent;->gestureTarget:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/DragEvent;
    return-object v0
.end method

.method public final getPickResult()Ljavafx/scene/input/PickResult;
    .locals 2

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/DragEvent;->pickResult:Ljavafx/scene/input/PickResult;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/DragEvent;
    return-object v0
.end method

.method public final getSceneX()D
    .locals 3

    .prologue
    .line 544
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/DragEvent;->sceneX:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/DragEvent;
    return-wide v0
.end method

.method public final getSceneY()D
    .locals 3

    .prologue
    .line 567
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/DragEvent;->sceneY:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/DragEvent;
    return-wide v0
.end method

.method public final getScreenX()D
    .locals 3

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/DragEvent;->screenX:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/DragEvent;
    return-wide v0
.end method

.method public final getScreenY()D
    .locals 3

    .prologue
    .line 521
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/DragEvent;->screenY:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/DragEvent;
    return-wide v0
.end method

.method public final getTransferMode()Ljavafx/scene/input/TransferMode;
    .locals 2

    .prologue
    .line 614
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/DragEvent;->transferMode:Ljavafx/scene/input/TransferMode;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/DragEvent;
    return-object v0
.end method

.method public final getX()D
    .locals 3

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/DragEvent;->x:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/DragEvent;
    return-wide v0
.end method

.method public final getY()D
    .locals 3

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/DragEvent;->y:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/DragEvent;
    return-wide v0
.end method

.method public final getZ()D
    .locals 3

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/DragEvent;->z:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/DragEvent;
    return-wide v0
.end method

.method public final isAccepted()Z
    .locals 2

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/DragEvent;->state:Ljavafx/scene/input/DragEvent$State;

    iget-boolean v1, v1, Ljavafx/scene/input/DragEvent$State;->accepted:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/DragEvent;
    return v0
.end method

.method public isDropCompleted()Z
    .locals 2

    .prologue
    .line 743
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/DragEvent;->state:Ljavafx/scene/input/DragEvent$State;

    iget-boolean v1, v1, Ljavafx/scene/input/DragEvent$State;->dropCompleted:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/DragEvent;
    return v0
.end method

.method public setDropCompleted(Z)V
    .locals 6

    .prologue
    .line 730
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent;
    move v1, p1

    .local v1, "isTransferDone":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/input/DragEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/DragEvent;->DRAG_DROPPED:Ljavafx/event/EventType;

    if-eq v2, v3, :cond_0

    .line 731
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "setDropCompleted can be called only from DRAG_DROPPED handler"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 735
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/input/DragEvent;->state:Ljavafx/scene/input/DragEvent$State;

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/input/DragEvent$State;->dropCompleted:Z

    .line 736
    return-void
.end method
