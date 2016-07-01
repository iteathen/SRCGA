.class public Ljavafx/scene/input/MouseEvent;
.super Ljavafx/scene/input/InputEvent;
.source "MouseEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/input/MouseEvent$Flags;
    }
.end annotation


# static fields
.field public static final ANY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DRAG_DETECTED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOUSE_CLICKED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOUSE_DRAGGED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOUSE_ENTERED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOUSE_ENTERED_TARGET:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOUSE_EXITED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOUSE_EXITED_TARGET:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOUSE_MOVED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOUSE_PRESSED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOUSE_RELEASED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1330613L


# instance fields
.field private final altDown:Z

.field private final button:Ljavafx/scene/input/MouseButton;

.field private final clickCount:I

.field private final controlDown:Z

.field private final flags:Ljavafx/scene/input/MouseEvent$Flags;

.field private final metaDown:Z

.field private final middleButtonDown:Z

.field private pickResult:Ljavafx/scene/input/PickResult;

.field private final popupTrigger:Z

.field private final primaryButtonDown:Z

.field private final sceneX:D

.field private final sceneY:D

.field private final screenX:D

.field private final screenY:D

.field private final secondaryButtonDown:Z

.field private final shiftDown:Z

.field private final stillSincePress:Z

.field private final synthesized:Z

.field private transient x:D

.field private transient y:D

.field private transient z:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 138
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/InputEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "MOUSE"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/MouseEvent;->ANY:Ljavafx/event/EventType;

    .line 146
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/MouseEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "MOUSE_PRESSED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    .line 154
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/MouseEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "MOUSE_RELEASED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    .line 164
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/MouseEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "MOUSE_CLICKED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/MouseEvent;->MOUSE_CLICKED:Ljavafx/event/EventType;

    .line 176
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/MouseEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "MOUSE_ENTERED_TARGET"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED_TARGET:Ljavafx/event/EventType;

    .line 186
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED_TARGET:Ljavafx/event/EventType;

    const-string v3, "MOUSE_ENTERED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    .line 198
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/MouseEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "MOUSE_EXITED_TARGET"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED_TARGET:Ljavafx/event/EventType;

    .line 208
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED_TARGET:Ljavafx/event/EventType;

    const-string v3, "MOUSE_EXITED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    .line 216
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/MouseEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "MOUSE_MOVED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/MouseEvent;->MOUSE_MOVED:Ljavafx/event/EventType;

    .line 225
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/MouseEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "MOUSE_DRAGGED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/MouseEvent;->MOUSE_DRAGGED:Ljavafx/event/EventType;

    .line 245
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/MouseEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "DRAG_DETECTED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/MouseEvent;->DRAG_DETECTED:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;DDDDLjavafx/scene/input/MouseButton;IZZZZZZZZZZLjavafx/scene/input/PickResult;)V
    .locals 38
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
    .param p12    # Ljavafx/scene/input/MouseButton;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "button"
        .end annotation
    .end param
    .param p13    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "clickCount"
        .end annotation
    .end param
    .param p14    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "shiftDown"
        .end annotation
    .end param
    .param p15    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "controlDown"
        .end annotation
    .end param
    .param p16    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "altDown"
        .end annotation
    .end param
    .param p17    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "metaDown"
        .end annotation
    .end param
    .param p18    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "primaryButtonDown"
        .end annotation
    .end param
    .param p19    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "middleButtonDown"
        .end annotation
    .end param
    .param p20    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "secondaryButtonDown"
        .end annotation
    .end param
    .param p21    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "synthesized"
        .end annotation
    .end param
    .param p22    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "popupTrigger"
        .end annotation
    .end param
    .param p23    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "stillSincePress"
        .end annotation
    .end param
    .param p24    # Ljavafx/scene/input/PickResult;
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
            "<+",
            "Ljavafx/scene/input/MouseEvent;",
            ">;DDDD",
            "Ljavafx/scene/input/MouseButton;",
            "IZZZZZZZZZZ",
            "Ljavafx/scene/input/PickResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 388
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/input/MouseEvent;
    move-object/from16 v4, p1

    .local v4, "source":Ljava/lang/Object;
    move-object/from16 v5, p2

    .local v5, "target":Ljavafx/event/EventTarget;
    move-object/from16 v6, p3

    .local v6, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/scene/input/MouseEvent;>;"
    move-wide/from16 v7, p4

    .local v7, "x":D
    move-wide/from16 v9, p6

    .local v9, "y":D
    move-wide/from16 v11, p8

    .local v11, "screenX":D
    move-wide/from16 v13, p10

    .local v13, "screenY":D
    move-object/from16 v15, p12

    .local v15, "button":Ljavafx/scene/input/MouseButton;
    move/from16 v16, p13

    .local v16, "clickCount":I
    move/from16 v17, p14

    .local v17, "shiftDown":Z
    move/from16 v18, p15

    .local v18, "controlDown":Z
    move/from16 v19, p16

    .local v19, "altDown":Z
    move/from16 v20, p17

    .local v20, "metaDown":Z
    move/from16 v21, p18

    .local v21, "primaryButtonDown":Z
    move/from16 v22, p19

    .local v22, "middleButtonDown":Z
    move/from16 v23, p20

    .local v23, "secondaryButtonDown":Z
    move/from16 v24, p21

    .local v24, "synthesized":Z
    move/from16 v25, p22

    .local v25, "popupTrigger":Z
    move/from16 v26, p23

    .local v26, "stillSincePress":Z
    move-object/from16 v27, p24

    .local v27, "pickResult":Ljavafx/scene/input/PickResult;
    move-object/from16 v29, v3

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    invoke-direct/range {v29 .. v32}, Ljavafx/scene/input/InputEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 442
    move-object/from16 v29, v3

    new-instance v30, Ljavafx/scene/input/MouseEvent$Flags;

    move-object/from16 v37, v30

    move-object/from16 v30, v37

    move-object/from16 v31, v37

    const/16 v32, 0x0

    invoke-direct/range {v31 .. v32}, Ljavafx/scene/input/MouseEvent$Flags;-><init>(Ljavafx/scene/input/MouseEvent$1;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Ljavafx/scene/input/MouseEvent;->flags:Ljavafx/scene/input/MouseEvent$Flags;

    .line 389
    move-object/from16 v29, v3

    move-wide/from16 v30, v7

    move-wide/from16 v0, v30

    move-object/from16 v2, v29

    iput-wide v0, v2, Ljavafx/scene/input/MouseEvent;->x:D

    .line 390
    move-object/from16 v29, v3

    move-wide/from16 v30, v9

    move-wide/from16 v0, v30

    move-object/from16 v2, v29

    iput-wide v0, v2, Ljavafx/scene/input/MouseEvent;->y:D

    .line 391
    move-object/from16 v29, v3

    move-wide/from16 v30, v11

    move-wide/from16 v0, v30

    move-object/from16 v2, v29

    iput-wide v0, v2, Ljavafx/scene/input/MouseEvent;->screenX:D

    .line 392
    move-object/from16 v29, v3

    move-wide/from16 v30, v13

    move-wide/from16 v0, v30

    move-object/from16 v2, v29

    iput-wide v0, v2, Ljavafx/scene/input/MouseEvent;->screenY:D

    .line 393
    move-object/from16 v29, v3

    move-wide/from16 v30, v7

    move-wide/from16 v0, v30

    move-object/from16 v2, v29

    iput-wide v0, v2, Ljavafx/scene/input/MouseEvent;->sceneX:D

    .line 394
    move-object/from16 v29, v3

    move-wide/from16 v30, v9

    move-wide/from16 v0, v30

    move-object/from16 v2, v29

    iput-wide v0, v2, Ljavafx/scene/input/MouseEvent;->sceneY:D

    .line 395
    move-object/from16 v29, v3

    move-object/from16 v30, v15

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Ljavafx/scene/input/MouseEvent;->button:Ljavafx/scene/input/MouseButton;

    .line 396
    move-object/from16 v29, v3

    move/from16 v30, v16

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Ljavafx/scene/input/MouseEvent;->clickCount:I

    .line 397
    move-object/from16 v29, v3

    move/from16 v30, v17

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Ljavafx/scene/input/MouseEvent;->shiftDown:Z

    .line 398
    move-object/from16 v29, v3

    move/from16 v30, v18

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Ljavafx/scene/input/MouseEvent;->controlDown:Z

    .line 399
    move-object/from16 v29, v3

    move/from16 v30, v19

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Ljavafx/scene/input/MouseEvent;->altDown:Z

    .line 400
    move-object/from16 v29, v3

    move/from16 v30, v20

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Ljavafx/scene/input/MouseEvent;->metaDown:Z

    .line 401
    move-object/from16 v29, v3

    move/from16 v30, v21

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Ljavafx/scene/input/MouseEvent;->primaryButtonDown:Z

    .line 402
    move-object/from16 v29, v3

    move/from16 v30, v22

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Ljavafx/scene/input/MouseEvent;->middleButtonDown:Z

    .line 403
    move-object/from16 v29, v3

    move/from16 v30, v23

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Ljavafx/scene/input/MouseEvent;->secondaryButtonDown:Z

    .line 404
    move-object/from16 v29, v3

    move/from16 v30, v24

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Ljavafx/scene/input/MouseEvent;->synthesized:Z

    .line 405
    move-object/from16 v29, v3

    move/from16 v30, v26

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Ljavafx/scene/input/MouseEvent;->stillSincePress:Z

    .line 406
    move-object/from16 v29, v3

    move/from16 v30, v25

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Ljavafx/scene/input/MouseEvent;->popupTrigger:Z

    .line 407
    move-object/from16 v29, v3

    move-object/from16 v30, v27

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Ljavafx/scene/input/MouseEvent;->pickResult:Ljavafx/scene/input/PickResult;

    .line 408
    move-object/from16 v29, v3

    move-object/from16 v30, v27

    if-eqz v30, :cond_0

    move-object/from16 v30, v27

    :goto_0
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Ljavafx/scene/input/MouseEvent;->pickResult:Ljavafx/scene/input/PickResult;

    .line 409
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/input/MouseEvent;->pickResult:Ljavafx/scene/input/PickResult;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/sun/javafx/scene/input/InputEventUtils;->recomputeCoordinates(Ljavafx/scene/input/PickResult;Ljava/lang/Object;)Ljavafx/geometry/Point3D;

    move-result-object v29

    move-object/from16 v28, v29

    .line 410
    .local v28, "p":Ljavafx/geometry/Point3D;
    move-object/from16 v29, v3

    move-object/from16 v30, v28

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, v29

    iput-wide v0, v2, Ljavafx/scene/input/MouseEvent;->x:D

    .line 411
    move-object/from16 v29, v3

    move-object/from16 v30, v28

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, v29

    iput-wide v0, v2, Ljavafx/scene/input/MouseEvent;->y:D

    .line 412
    move-object/from16 v29, v3

    move-object/from16 v30, v28

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, v29

    iput-wide v0, v2, Ljavafx/scene/input/MouseEvent;->z:D

    .line 413
    return-void

    .line 408
    .end local v28    # "p":Ljavafx/geometry/Point3D;
    :cond_0
    new-instance v30, Ljavafx/scene/input/PickResult;

    move-object/from16 v37, v30

    move-object/from16 v30, v37

    move-object/from16 v31, v37

    move-object/from16 v32, v5

    move-wide/from16 v33, v7

    move-wide/from16 v35, v9

    invoke-direct/range {v31 .. v36}, Ljavafx/scene/input/PickResult;-><init>(Ljavafx/event/EventTarget;DD)V

    goto :goto_0
.end method

.method public constructor <init>(Ljavafx/event/EventType;DDDDLjavafx/scene/input/MouseButton;IZZZZZZZZZZLjavafx/scene/input/PickResult;)V
    .locals 48
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
    .param p10    # Ljavafx/scene/input/MouseButton;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "button"
        .end annotation
    .end param
    .param p11    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "clickCount"
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
            value = "primaryButtonDown"
        .end annotation
    .end param
    .param p17    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "middleButtonDown"
        .end annotation
    .end param
    .param p18    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "secondaryButtonDown"
        .end annotation
    .end param
    .param p19    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "synthesized"
        .end annotation
    .end param
    .param p20    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "popupTrigger"
        .end annotation
    .end param
    .param p21    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "stillSincePress"
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
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/scene/input/MouseEvent;",
            ">;DDDD",
            "Ljavafx/scene/input/MouseButton;",
            "IZZZZZZZZZZ",
            "Ljavafx/scene/input/PickResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 339
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object/from16 v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/scene/input/MouseEvent;>;"
    move-wide/from16 v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    move-wide/from16 v6, p6

    .local v6, "screenX":D
    move-wide/from16 v8, p8

    .local v8, "screenY":D
    move-object/from16 v10, p10

    .local v10, "button":Ljavafx/scene/input/MouseButton;
    move/from16 v11, p11

    .local v11, "clickCount":I
    move/from16 v12, p12

    .local v12, "shiftDown":Z
    move/from16 v13, p13

    .local v13, "controlDown":Z
    move/from16 v14, p14

    .local v14, "altDown":Z
    move/from16 v15, p15

    .local v15, "metaDown":Z
    move/from16 v16, p16

    .local v16, "primaryButtonDown":Z
    move/from16 v17, p17

    .local v17, "middleButtonDown":Z
    move/from16 v18, p18

    .local v18, "secondaryButtonDown":Z
    move/from16 v19, p19

    .local v19, "synthesized":Z
    move/from16 v20, p20

    .local v20, "popupTrigger":Z
    move/from16 v21, p21

    .local v21, "stillSincePress":Z
    move-object/from16 v22, p22

    .local v22, "pickResult":Ljavafx/scene/input/PickResult;
    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v26, v1

    move-wide/from16 v27, v2

    move-wide/from16 v29, v4

    move-wide/from16 v31, v6

    move-wide/from16 v33, v8

    move-object/from16 v35, v10

    move/from16 v36, v11

    move/from16 v37, v12

    move/from16 v38, v13

    move/from16 v39, v14

    move/from16 v40, v15

    move/from16 v41, v16

    move/from16 v42, v17

    move/from16 v43, v18

    move/from16 v44, v19

    move/from16 v45, v20

    move/from16 v46, v21

    move-object/from16 v47, v22

    invoke-direct/range {v23 .. v47}, Ljavafx/scene/input/MouseEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;DDDDLjavafx/scene/input/MouseButton;IZZZZZZZZZZLjavafx/scene/input/PickResult;)V

    .line 343
    return-void
.end method

.method public static copyForMouseDragEvent(Ljavafx/scene/input/MouseEvent;Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljava/lang/Object;Ljavafx/scene/input/PickResult;)Ljavafx/scene/input/MouseDragEvent;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/input/MouseEvent;",
            "Ljava/lang/Object;",
            "Ljavafx/event/EventTarget;",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;",
            "Ljava/lang/Object;",
            "Ljavafx/scene/input/PickResult;",
            ")",
            "Ljavafx/scene/input/MouseDragEvent;"
        }
    .end annotation

    .prologue
    .line 433
    move-object/from16 v2, p0

    .local v2, "e":Ljavafx/scene/input/MouseEvent;
    move-object/from16 v3, p1

    .local v3, "source":Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "target":Ljavafx/event/EventTarget;
    move-object/from16 v5, p3

    .local v5, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/MouseDragEvent;>;"
    move-object/from16 v6, p4

    .local v6, "gestureSource":Ljava/lang/Object;
    move-object/from16 v7, p5

    .local v7, "pickResult":Ljavafx/scene/input/PickResult;
    new-instance v9, Ljavafx/scene/input/MouseDragEvent;

    move-object/from16 v35, v9

    move-object/from16 v9, v35

    move-object/from16 v10, v35

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v2

    iget-wide v14, v14, Ljavafx/scene/input/MouseEvent;->sceneX:D

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljavafx/scene/input/MouseEvent;->sceneY:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/input/MouseEvent;->screenX:D

    move-wide/from16 v18, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Ljavafx/scene/input/MouseEvent;->screenY:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/input/MouseEvent;->button:Ljavafx/scene/input/MouseButton;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Ljavafx/scene/input/MouseEvent;->clickCount:I

    move/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-boolean v0, v0, Ljavafx/scene/input/MouseEvent;->shiftDown:Z

    move/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Ljavafx/scene/input/MouseEvent;->controlDown:Z

    move/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-boolean v0, v0, Ljavafx/scene/input/MouseEvent;->altDown:Z

    move/from16 v26, v0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-boolean v0, v0, Ljavafx/scene/input/MouseEvent;->metaDown:Z

    move/from16 v27, v0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-boolean v0, v0, Ljavafx/scene/input/MouseEvent;->primaryButtonDown:Z

    move/from16 v28, v0

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-boolean v0, v0, Ljavafx/scene/input/MouseEvent;->middleButtonDown:Z

    move/from16 v29, v0

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-boolean v0, v0, Ljavafx/scene/input/MouseEvent;->secondaryButtonDown:Z

    move/from16 v30, v0

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-boolean v0, v0, Ljavafx/scene/input/MouseEvent;->synthesized:Z

    move/from16 v31, v0

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-boolean v0, v0, Ljavafx/scene/input/MouseEvent;->popupTrigger:Z

    move/from16 v32, v0

    move-object/from16 v33, v7

    move-object/from16 v34, v6

    invoke-direct/range {v10 .. v34}, Ljavafx/scene/input/MouseDragEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;DDDDLjavafx/scene/input/MouseButton;IZZZZZZZZZLjavafx/scene/input/PickResult;Ljava/lang/Object;)V

    move-object v8, v9

    .line 439
    .local v8, "ev":Ljavafx/scene/input/MouseDragEvent;
    move-object v9, v8

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/input/MouseDragEvent;->recomputeCoordinatesToSource(Ljavafx/scene/input/MouseEvent;Ljava/lang/Object;)V

    .line 440
    move-object v9, v8

    move-object v2, v9

    .end local v2    # "e":Ljavafx/scene/input/MouseEvent;
    return-object v2
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
    .line 943
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/input/MouseEvent;
    move-object v2, p1

    .local v2, "in":Ljava/io/ObjectInputStream;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 944
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/input/MouseEvent;->sceneX:D

    iput-wide v4, v3, Ljavafx/scene/input/MouseEvent;->x:D

    .line 945
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/input/MouseEvent;->sceneY:D

    iput-wide v4, v3, Ljavafx/scene/input/MouseEvent;->y:D

    .line 946
    return-void
.end method


# virtual methods
.method public bridge synthetic copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/input/MouseEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/MouseEvent;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/MouseEvent;
    .locals 7

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Ljavafx/scene/input/InputEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;

    move-result-object v4

    check-cast v4, Ljavafx/scene/input/MouseEvent;

    move-object v3, v4

    .line 280
    .local v3, "e":Ljavafx/scene/input/MouseEvent;
    move-object v4, v3

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/input/MouseEvent;->recomputeCoordinatesToSource(Ljavafx/scene/input/MouseEvent;Ljava/lang/Object;)V

    .line 281
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/MouseEvent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/event/EventTarget;",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/scene/input/MouseEvent;",
            ">;)",
            "Ljavafx/scene/input/MouseEvent;"
        }
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v3, p3

    .local v3, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/scene/input/MouseEvent;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/input/MouseEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/MouseEvent;

    move-result-object v5

    move-object v4, v5

    .line 294
    .local v4, "e":Ljavafx/scene/input/MouseEvent;
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Ljavafx/scene/input/MouseEvent;->eventType:Ljavafx/event/EventType;

    .line 295
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return-object v0
.end method

.method public final getButton()Ljavafx/scene/input/MouseButton;
    .locals 2

    .prologue
    .line 601
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/MouseEvent;->button:Ljavafx/scene/input/MouseButton;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return-object v0
.end method

.method public final getClickCount()I
    .locals 2

    .prologue
    .line 629
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/input/MouseEvent;->clickCount:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return v0
.end method

.method public getEventType()Ljavafx/event/EventType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/input/InputEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return-object v0
.end method

.method public final getPickResult()Ljavafx/scene/input/PickResult;
    .locals 2

    .prologue
    .line 915
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/MouseEvent;->pickResult:Ljavafx/scene/input/PickResult;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return-object v0
.end method

.method public final getSceneX()D
    .locals 3

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/MouseEvent;->sceneX:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return-wide v0
.end method

.method public final getSceneY()D
    .locals 3

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/MouseEvent;->sceneY:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return-wide v0
.end method

.method public final getScreenX()D
    .locals 3

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/MouseEvent;->screenX:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return-wide v0
.end method

.method public final getScreenY()D
    .locals 3

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/MouseEvent;->screenY:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return-wide v0
.end method

.method public final getX()D
    .locals 3

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/MouseEvent;->x:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return-wide v0
.end method

.method public final getY()D
    .locals 3

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/MouseEvent;->y:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return-wide v0
.end method

.method public final getZ()D
    .locals 3

    .prologue
    .line 515
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/MouseEvent;->z:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return-wide v0
.end method

.method public final isAltDown()Z
    .locals 2

    .prologue
    .line 695
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/MouseEvent;->altDown:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return v0
.end method

.method public final isControlDown()Z
    .locals 2

    .prologue
    .line 682
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/MouseEvent;->controlDown:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return v0
.end method

.method public isDragDetect()Z
    .locals 2

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/MouseEvent;->flags:Ljavafx/scene/input/MouseEvent$Flags;

    iget-boolean v1, v1, Ljavafx/scene/input/MouseEvent$Flags;->dragDetect:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return v0
.end method

.method public final isMetaDown()Z
    .locals 2

    .prologue
    .line 708
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/MouseEvent;->metaDown:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return v0
.end method

.method public final isMiddleButtonDown()Z
    .locals 2

    .prologue
    .line 846
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/MouseEvent;->middleButtonDown:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return v0
.end method

.method public final isPopupTrigger()Z
    .locals 2

    .prologue
    .line 778
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/MouseEvent;->popupTrigger:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return v0
.end method

.method public final isPrimaryButtonDown()Z
    .locals 2

    .prologue
    .line 801
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/MouseEvent;->primaryButtonDown:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return v0
.end method

.method public final isSecondaryButtonDown()Z
    .locals 2

    .prologue
    .line 824
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/MouseEvent;->secondaryButtonDown:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return v0
.end method

.method public final isShiftDown()Z
    .locals 2

    .prologue
    .line 669
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/MouseEvent;->shiftDown:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return v0
.end method

.method public final isShortcutDown()Z
    .locals 3

    .prologue
    .line 737
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    sget-object v1, Ljavafx/scene/input/MouseEvent$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->getPlatformShortcutKey()Ljavafx/scene/input/KeyCode;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 751
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    :goto_0
    return v0

    .line 739
    .restart local v0    # "this":Ljavafx/scene/input/MouseEvent;
    :pswitch_0
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/MouseEvent;->shiftDown:Z

    move v0, v1

    goto :goto_0

    .line 742
    :pswitch_1
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/MouseEvent;->controlDown:Z

    move v0, v1

    goto :goto_0

    .line 745
    :pswitch_2
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/MouseEvent;->altDown:Z

    move v0, v1

    goto :goto_0

    .line 748
    :pswitch_3
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/MouseEvent;->metaDown:Z

    move v0, v1

    goto :goto_0

    .line 737
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final isStillSincePress()Z
    .locals 2

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/MouseEvent;->stillSincePress:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return v0
.end method

.method public isSynthesized()Z
    .locals 2

    .prologue
    .line 724
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/MouseEvent;->synthesized:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent;
    return v0
.end method

.method recomputeCoordinatesToSource(Ljavafx/scene/input/MouseEvent;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 256
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/input/MouseEvent;
    move-object v2, p1

    .local v2, "oldEvent":Ljavafx/scene/input/MouseEvent;
    move-object v3, p2

    .local v3, "newSource":Ljava/lang/Object;
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/input/MouseEvent;->pickResult:Ljavafx/scene/input/PickResult;

    move-object v6, v3

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/input/InputEventUtils;->recomputeCoordinates(Ljavafx/scene/input/PickResult;Ljava/lang/Object;)Ljavafx/geometry/Point3D;

    move-result-object v5

    move-object v4, v5

    .line 259
    .local v4, "newCoordinates":Ljavafx/geometry/Point3D;
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v6

    iput-wide v6, v5, Ljavafx/scene/input/MouseEvent;->x:D

    .line 260
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    iput-wide v6, v5, Ljavafx/scene/input/MouseEvent;->y:D

    .line 261
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v6

    iput-wide v6, v5, Ljavafx/scene/input/MouseEvent;->z:D

    .line 262
    return-void
.end method

.method public setDragDetect(Z)V
    .locals 4

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent;
    move v1, p1

    .local v1, "dragDetect":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/input/MouseEvent;->flags:Ljavafx/scene/input/MouseEvent$Flags;

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/input/MouseEvent$Flags;->dragDetect:Z

    .line 464
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 854
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/input/MouseEvent;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "MouseEvent ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 856
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string v4, "source = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 857
    move-object v3, v2

    const-string v4, ", target = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 858
    move-object v3, v2

    const-string v4, ", eventType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 859
    move-object v3, v2

    const-string v4, ", consumed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isConsumed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 861
    move-object v3, v2

    const-string v4, ", x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", z = "

    .line 862
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getZ()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 864
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 865
    move-object v3, v2

    const-string v4, ", button = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 867
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->getClickCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 868
    move-object v3, v2

    const-string v4, ", clickCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getClickCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 870
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->isPrimaryButtonDown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 871
    move-object v3, v2

    const-string v4, ", primaryButtonDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 873
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->isMiddleButtonDown()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 874
    move-object v3, v2

    const-string v4, ", middleButtonDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 876
    :cond_3
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->isSecondaryButtonDown()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 877
    move-object v3, v2

    const-string v4, ", secondaryButtonDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 879
    :cond_4
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->isShiftDown()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 880
    move-object v3, v2

    const-string v4, ", shiftDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 882
    :cond_5
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->isControlDown()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 883
    move-object v3, v2

    const-string v4, ", controlDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 885
    :cond_6
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->isAltDown()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 886
    move-object v3, v2

    const-string v4, ", altDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 888
    :cond_7
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->isMetaDown()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 889
    move-object v3, v2

    const-string v4, ", metaDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 891
    :cond_8
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->isShortcutDown()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 892
    move-object v3, v2

    const-string v4, ", shortcutDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 894
    :cond_9
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->isSynthesized()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 895
    move-object v3, v2

    const-string v4, ", synthesized"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 897
    :cond_a
    move-object v3, v2

    const-string v4, ", pickResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getPickResult()Ljavafx/scene/input/PickResult;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 899
    move-object v3, v2

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/input/MouseEvent;
    return-object v1
.end method
