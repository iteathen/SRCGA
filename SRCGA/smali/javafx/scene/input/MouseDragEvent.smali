.class public final Ljavafx/scene/input/MouseDragEvent;
.super Ljavafx/scene/input/MouseEvent;
.source "MouseDragEvent.java"


# static fields
.field public static final ANY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOUSE_DRAG_ENTERED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOUSE_DRAG_ENTERED_TARGET:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOUSE_DRAG_EXITED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOUSE_DRAG_EXITED_TARGET:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOUSE_DRAG_OVER:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOUSE_DRAG_RELEASED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1330613L


# instance fields
.field private final transient gestureSource:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 65
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/MouseEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "MOUSE-DRAG"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/MouseDragEvent;->ANY:Ljavafx/event/EventType;

    .line 71
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/MouseDragEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "MOUSE-DRAG_OVER"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_OVER:Ljavafx/event/EventType;

    .line 78
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/MouseDragEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "MOUSE-DRAG_RELEASED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_RELEASED:Ljavafx/event/EventType;

    .line 91
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/MouseDragEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "MOUSE-DRAG_ENTERED_TARGET"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_ENTERED_TARGET:Ljavafx/event/EventType;

    .line 102
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_ENTERED_TARGET:Ljavafx/event/EventType;

    const-string v3, "MOUSE-DRAG_ENTERED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_ENTERED:Ljavafx/event/EventType;

    .line 116
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/MouseDragEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "MOUSE-DRAG_EXITED_TARGET"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_EXITED_TARGET:Ljavafx/event/EventType;

    .line 127
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_EXITED_TARGET:Ljavafx/event/EventType;

    const-string v3, "MOUSE-DRAG_EXITED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_EXITED:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;DDDDLjavafx/scene/input/MouseButton;IZZZZZZZZZLjavafx/scene/input/PickResult;Ljava/lang/Object;)V
    .locals 52
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
    .param p23    # Ljavafx/scene/input/PickResult;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "pickResult"
        .end annotation
    .end param
    .param p24    # Ljava/lang/Object;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "gestureSource"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/event/EventTarget;",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;DDDD",
            "Ljavafx/scene/input/MouseButton;",
            "IZZZZZZZZZ",
            "Ljavafx/scene/input/PickResult;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 164
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/input/MouseDragEvent;
    move-object/from16 v3, p1

    .local v3, "source":Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "target":Ljavafx/event/EventTarget;
    move-object/from16 v5, p3

    .local v5, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/MouseDragEvent;>;"
    move-wide/from16 v6, p4

    .local v6, "x":D
    move-wide/from16 v8, p6

    .local v8, "y":D
    move-wide/from16 v10, p8

    .local v10, "screenX":D
    move-wide/from16 v12, p10

    .local v12, "screenY":D
    move-object/from16 v14, p12

    .local v14, "button":Ljavafx/scene/input/MouseButton;
    move/from16 v15, p13

    .local v15, "clickCount":I
    move/from16 v16, p14

    .local v16, "shiftDown":Z
    move/from16 v17, p15

    .local v17, "controlDown":Z
    move/from16 v18, p16

    .local v18, "altDown":Z
    move/from16 v19, p17

    .local v19, "metaDown":Z
    move/from16 v20, p18

    .local v20, "primaryButtonDown":Z
    move/from16 v21, p19

    .local v21, "middleButtonDown":Z
    move/from16 v22, p20

    .local v22, "secondaryButtonDown":Z
    move/from16 v23, p21

    .local v23, "synthesized":Z
    move/from16 v24, p22

    .local v24, "popupTrigger":Z
    move-object/from16 v25, p23

    .local v25, "pickResult":Ljavafx/scene/input/PickResult;
    move-object/from16 v26, p24

    .local v26, "gestureSource":Ljava/lang/Object;
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-wide/from16 v31, v6

    move-wide/from16 v33, v8

    move-wide/from16 v35, v10

    move-wide/from16 v37, v12

    move-object/from16 v39, v14

    move/from16 v40, v15

    move/from16 v41, v16

    move/from16 v42, v17

    move/from16 v43, v18

    move/from16 v44, v19

    move/from16 v45, v20

    move/from16 v46, v21

    move/from16 v47, v22

    move/from16 v48, v23

    move/from16 v49, v24

    const/16 v50, 0x0

    move-object/from16 v51, v25

    invoke-direct/range {v27 .. v51}, Ljavafx/scene/input/MouseEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;DDDDLjavafx/scene/input/MouseButton;IZZZZZZZZZZLjavafx/scene/input/PickResult;)V

    .line 168
    move-object/from16 v27, v2

    move-object/from16 v28, v26

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Ljavafx/scene/input/MouseDragEvent;->gestureSource:Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public constructor <init>(Ljavafx/event/EventType;DDDDLjavafx/scene/input/MouseButton;IZZZZZZZZZLjavafx/scene/input/PickResult;Ljava/lang/Object;)V
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
    .param p21    # Ljavafx/scene/input/PickResult;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "pickResult"
        .end annotation
    .end param
    .param p22    # Ljava/lang/Object;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "gestureSource"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;DDDD",
            "Ljavafx/scene/input/MouseButton;",
            "IZZZZZZZZZ",
            "Ljavafx/scene/input/PickResult;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 203
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseDragEvent;
    move-object/from16 v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/MouseDragEvent;>;"
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
    move-object/from16 v21, p21

    .local v21, "pickResult":Ljavafx/scene/input/PickResult;
    move-object/from16 v22, p22

    .local v22, "gestureSource":Ljava/lang/Object;
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

    move-object/from16 v46, v21

    move-object/from16 v47, v22

    invoke-direct/range {v23 .. v47}, Ljavafx/scene/input/MouseDragEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;DDDDLjavafx/scene/input/MouseButton;IZZZZZZZZZLjavafx/scene/input/PickResult;Ljava/lang/Object;)V

    .line 207
    return-void
.end method


# virtual methods
.method public bridge synthetic copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseDragEvent;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/input/MouseDragEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/MouseDragEvent;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/input/MouseDragEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/MouseDragEvent;
    .locals 6

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseDragEvent;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/input/MouseEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/MouseEvent;

    move-result-object v3

    check-cast v3, Ljavafx/scene/input/MouseDragEvent;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/input/MouseDragEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/MouseDragEvent;
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
            "Ljavafx/scene/input/MouseDragEvent;"
        }
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseDragEvent;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v3, p3

    .local v3, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/scene/input/MouseEvent;>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Ljavafx/scene/input/MouseEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/MouseEvent;

    move-result-object v4

    check-cast v4, Ljavafx/scene/input/MouseDragEvent;

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/input/MouseDragEvent;
    return-object v0
.end method

.method public bridge synthetic copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/MouseEvent;
    .locals 6

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseDragEvent;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/input/MouseDragEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/MouseDragEvent;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/input/MouseDragEvent;
    return-object v0
.end method

.method public bridge synthetic copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/MouseEvent;
    .locals 8

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseDragEvent;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljavafx/scene/input/MouseDragEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/MouseDragEvent;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/input/MouseDragEvent;
    return-object v0
.end method

.method public getEventType()Ljavafx/event/EventType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseDragEvent;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseDragEvent;
    return-object v0
.end method

.method public getGestureSource()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseDragEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/MouseDragEvent;->gestureSource:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseDragEvent;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 227
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/input/MouseDragEvent;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "MouseDragEvent ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 229
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string v4, "source = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseDragEvent;->getSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 230
    move-object v3, v2

    const-string v4, ", target = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseDragEvent;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 231
    move-object v3, v2

    const-string v4, ", gestureSource = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseDragEvent;->getGestureSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 232
    move-object v3, v2

    const-string v4, ", eventType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseDragEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 233
    move-object v3, v2

    const-string v4, ", consumed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseDragEvent;->isConsumed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 235
    move-object v3, v2

    const-string v4, ", x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseDragEvent;->getX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseDragEvent;->getY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", z = "

    .line 236
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseDragEvent;->getZ()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 238
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseDragEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 239
    move-object v3, v2

    const-string v4, ", button = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseDragEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 241
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseDragEvent;->getClickCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 242
    move-object v3, v2

    const-string v4, ", clickCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseDragEvent;->getClickCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 244
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseDragEvent;->isPrimaryButtonDown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 245
    move-object v3, v2

    const-string v4, ", primaryButtonDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 247
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseDragEvent;->isMiddleButtonDown()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 248
    move-object v3, v2

    const-string v4, ", middleButtonDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 250
    :cond_3
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseDragEvent;->isSecondaryButtonDown()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 251
    move-object v3, v2

    const-string v4, ", secondaryButtonDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 253
    :cond_4
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseDragEvent;->isShiftDown()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 254
    move-object v3, v2

    const-string v4, ", shiftDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 256
    :cond_5
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseDragEvent;->isControlDown()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 257
    move-object v3, v2

    const-string v4, ", controlDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 259
    :cond_6
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseDragEvent;->isAltDown()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 260
    move-object v3, v2

    const-string v4, ", altDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 262
    :cond_7
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseDragEvent;->isMetaDown()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 263
    move-object v3, v2

    const-string v4, ", metaDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 265
    :cond_8
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseDragEvent;->isShortcutDown()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 266
    move-object v3, v2

    const-string v4, ", shortcutDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 268
    :cond_9
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseDragEvent;->isSynthesized()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 269
    move-object v3, v2

    const-string v4, ", synthesized"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 271
    :cond_a
    move-object v3, v2

    const-string v4, ", pickResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseDragEvent;->getPickResult()Ljavafx/scene/input/PickResult;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 273
    move-object v3, v2

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/input/MouseDragEvent;
    return-object v1
.end method
