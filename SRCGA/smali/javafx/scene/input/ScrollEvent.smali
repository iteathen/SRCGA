.class public final Ljavafx/scene/input/ScrollEvent;
.super Ljavafx/scene/input/GestureEvent;
.source "ScrollEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;,
        Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;
    }
.end annotation


# static fields
.field public static final ANY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCROLL:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCROLL_FINISHED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCROLL_STARTED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1330613L


# instance fields
.field private final deltaX:D

.field private final deltaY:D

.field private final multiplierX:D

.field private final multiplierY:D

.field private final textDeltaX:D

.field private final textDeltaXUnits:Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;

.field private final textDeltaY:D

.field private final textDeltaYUnits:Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

.field private totalDeltaX:D

.field private final totalDeltaY:D

.field private final touchCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 108
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/GestureEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "ANY_SCROLL"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/ScrollEvent;->ANY:Ljavafx/event/EventType;

    .line 115
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/ScrollEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "SCROLL"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/ScrollEvent;->SCROLL:Ljavafx/event/EventType;

    .line 123
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/ScrollEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "SCROLL_STARTED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/ScrollEvent;->SCROLL_STARTED:Ljavafx/event/EventType;

    .line 131
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/ScrollEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "SCROLL_FINISHED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/ScrollEvent;->SCROLL_FINISHED:Ljavafx/event/EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;DDDDZZZZZZDDDDDDLjavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;DLjavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;DILjavafx/scene/input/PickResult;)V
    .locals 62
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/event/EventTarget;",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;DDDDZZZZZZDDDDDD",
            "Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;",
            "D",
            "Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;",
            "DI",
            "Ljavafx/scene/input/PickResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    move-object/from16 v4, p0

    .local v4, "this":Ljavafx/scene/input/ScrollEvent;
    move-object/from16 v5, p1

    .local v5, "source":Ljava/lang/Object;
    move-object/from16 v6, p2

    .local v6, "target":Ljavafx/event/EventTarget;
    move-object/from16 v7, p3

    .local v7, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/ScrollEvent;>;"
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

    .local v22, "deltaX":D
    move-wide/from16 v24, p20

    .local v24, "deltaY":D
    move-wide/from16 v26, p22

    .local v26, "totalDeltaX":D
    move-wide/from16 v28, p24

    .local v28, "totalDeltaY":D
    move-wide/from16 v30, p26

    .local v30, "multiplierX":D
    move-wide/from16 v32, p28

    .local v32, "multiplierY":D
    move-object/from16 v34, p30

    .local v34, "textDeltaXUnits":Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;
    move-wide/from16 v35, p31

    .local v35, "textDeltaX":D
    move-object/from16 v37, p33

    .local v37, "textDeltaYUnits":Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;
    move-wide/from16 v38, p34

    .local v38, "textDeltaY":D
    move/from16 v40, p36

    .local v40, "touchCount":I
    move-object/from16 v41, p37

    .local v41, "pickResult":Ljavafx/scene/input/PickResult;
    move-object/from16 v42, v4

    move-object/from16 v43, v5

    move-object/from16 v44, v6

    move-object/from16 v45, v7

    move-wide/from16 v46, v8

    move-wide/from16 v48, v10

    move-wide/from16 v50, v12

    move-wide/from16 v52, v14

    move/from16 v54, v16

    move/from16 v55, v17

    move/from16 v56, v18

    move/from16 v57, v19

    move/from16 v58, v20

    move/from16 v59, v21

    move-object/from16 v60, v41

    invoke-direct/range {v42 .. v60}, Ljavafx/scene/input/GestureEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;DDDDZZZZZZLjavafx/scene/input/PickResult;)V

    .line 155
    move-object/from16 v42, v4

    move-wide/from16 v43, v22

    move-wide/from16 v0, v43

    move-object/from16 v2, v42

    iput-wide v0, v2, Ljavafx/scene/input/ScrollEvent;->deltaX:D

    .line 156
    move-object/from16 v42, v4

    move-wide/from16 v43, v24

    move-wide/from16 v0, v43

    move-object/from16 v2, v42

    iput-wide v0, v2, Ljavafx/scene/input/ScrollEvent;->deltaY:D

    .line 157
    move-object/from16 v42, v4

    move-wide/from16 v43, v26

    move-wide/from16 v0, v43

    move-object/from16 v2, v42

    iput-wide v0, v2, Ljavafx/scene/input/ScrollEvent;->totalDeltaX:D

    .line 158
    move-object/from16 v42, v4

    move-wide/from16 v43, v28

    move-wide/from16 v0, v43

    move-object/from16 v2, v42

    iput-wide v0, v2, Ljavafx/scene/input/ScrollEvent;->totalDeltaY:D

    .line 159
    move-object/from16 v42, v4

    move-object/from16 v43, v34

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    iput-object v0, v1, Ljavafx/scene/input/ScrollEvent;->textDeltaXUnits:Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;

    .line 160
    move-object/from16 v42, v4

    move-wide/from16 v43, v35

    move-wide/from16 v0, v43

    move-object/from16 v2, v42

    iput-wide v0, v2, Ljavafx/scene/input/ScrollEvent;->textDeltaX:D

    .line 161
    move-object/from16 v42, v4

    move-object/from16 v43, v37

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    iput-object v0, v1, Ljavafx/scene/input/ScrollEvent;->textDeltaYUnits:Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    .line 162
    move-object/from16 v42, v4

    move-wide/from16 v43, v38

    move-wide/from16 v0, v43

    move-object/from16 v2, v42

    iput-wide v0, v2, Ljavafx/scene/input/ScrollEvent;->textDeltaY:D

    .line 163
    move-object/from16 v42, v4

    move/from16 v43, v40

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Ljavafx/scene/input/ScrollEvent;->touchCount:I

    .line 164
    move-object/from16 v42, v4

    move-wide/from16 v43, v30

    move-wide/from16 v0, v43

    move-object/from16 v2, v42

    iput-wide v0, v2, Ljavafx/scene/input/ScrollEvent;->multiplierX:D

    .line 165
    move-object/from16 v42, v4

    move-wide/from16 v43, v32

    move-wide/from16 v0, v43

    move-object/from16 v2, v42

    iput-wide v0, v2, Ljavafx/scene/input/ScrollEvent;->multiplierY:D

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;DDDDZZZZZZDDDDLjavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;DLjavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;DILjavafx/scene/input/PickResult;)V
    .locals 72
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
            value = "deltaX"
        .end annotation
    .end param
    .param p20    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "deltaY"
        .end annotation
    .end param
    .param p22    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "totalDeltaX"
        .end annotation
    .end param
    .param p24    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "totalDeltaY"
        .end annotation
    .end param
    .param p26    # Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "textDeltaXUnits"
        .end annotation
    .end param
    .param p27    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "textDeltaX"
        .end annotation
    .end param
    .param p29    # Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "textDeltaYUnits"
        .end annotation
    .end param
    .param p30    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "textDeltaY"
        .end annotation
    .end param
    .param p32    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "touchCount"
        .end annotation
    .end param
    .param p33    # Ljavafx/scene/input/PickResult;
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
            "Ljavafx/scene/input/ScrollEvent;",
            ">;DDDDZZZZZZDDDD",
            "Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;",
            "D",
            "Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;",
            "DI",
            "Ljavafx/scene/input/PickResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 212
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/input/ScrollEvent;
    move-object/from16 v1, p1

    .local v1, "source":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "target":Ljavafx/event/EventTarget;
    move-object/from16 v3, p3

    .local v3, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/ScrollEvent;>;"
    move-wide/from16 v4, p4

    .local v4, "x":D
    move-wide/from16 v6, p6

    .local v6, "y":D
    move-wide/from16 v8, p8

    .local v8, "screenX":D
    move-wide/from16 v10, p10

    .local v10, "screenY":D
    move/from16 v12, p12

    .local v12, "shiftDown":Z
    move/from16 v13, p13

    .local v13, "controlDown":Z
    move/from16 v14, p14

    .local v14, "altDown":Z
    move/from16 v15, p15

    .local v15, "metaDown":Z
    move/from16 v16, p16

    .local v16, "direct":Z
    move/from16 v17, p17

    .local v17, "inertia":Z
    move-wide/from16 v18, p18

    .local v18, "deltaX":D
    move-wide/from16 v20, p20

    .local v20, "deltaY":D
    move-wide/from16 v22, p22

    .local v22, "totalDeltaX":D
    move-wide/from16 v24, p24

    .local v24, "totalDeltaY":D
    move-object/from16 v26, p26

    .local v26, "textDeltaXUnits":Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;
    move-wide/from16 v27, p27

    .local v27, "textDeltaX":D
    move-object/from16 v29, p29

    .local v29, "textDeltaYUnits":Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;
    move-wide/from16 v30, p30

    .local v30, "textDeltaY":D
    move/from16 v32, p32

    .local v32, "touchCount":I
    move-object/from16 v33, p33

    .local v33, "pickResult":Ljavafx/scene/input/PickResult;
    move-object/from16 v34, v0

    move-object/from16 v35, v1

    move-object/from16 v36, v2

    move-object/from16 v37, v3

    move-wide/from16 v38, v4

    move-wide/from16 v40, v6

    move-wide/from16 v42, v8

    move-wide/from16 v44, v10

    move/from16 v46, v12

    move/from16 v47, v13

    move/from16 v48, v14

    move/from16 v49, v15

    move/from16 v50, v16

    move/from16 v51, v17

    move-wide/from16 v52, v18

    move-wide/from16 v54, v20

    move-wide/from16 v56, v22

    move-wide/from16 v58, v24

    const-wide/high16 v60, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    move-object/from16 v64, v26

    move-wide/from16 v65, v27

    move-object/from16 v67, v29

    move-wide/from16 v68, v30

    move/from16 v70, v32

    move-object/from16 v71, v33

    invoke-direct/range {v34 .. v71}, Ljavafx/scene/input/ScrollEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;DDDDZZZZZZDDDDDDLjavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;DLjavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;DILjavafx/scene/input/PickResult;)V

    .line 216
    return-void
.end method

.method public constructor <init>(Ljavafx/event/EventType;DDDDZZZZZZDDDDDDLjavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;DLjavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;DILjavafx/scene/input/PickResult;)V
    .locals 74
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
            value = "deltaX"
        .end annotation
    .end param
    .param p18    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "deltaY"
        .end annotation
    .end param
    .param p20    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "totalDeltaX"
        .end annotation
    .end param
    .param p22    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "totalDeltaY"
        .end annotation
    .end param
    .param p24    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "multiplierX"
        .end annotation
    .end param
    .param p26    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "multiplierY"
        .end annotation
    .end param
    .param p28    # Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "textDeltaXUnits"
        .end annotation
    .end param
    .param p29    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "textDeltaX"
        .end annotation
    .end param
    .param p31    # Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "textDeltaYUnits"
        .end annotation
    .end param
    .param p32    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "textDeltaY"
        .end annotation
    .end param
    .param p34    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "touchCount"
        .end annotation
    .end param
    .param p35    # Ljavafx/scene/input/PickResult;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "pickResult"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;DDDDZZZZZZDDDDDD",
            "Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;",
            "D",
            "Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;",
            "DI",
            "Ljavafx/scene/input/PickResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 311
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/input/ScrollEvent;
    move-object/from16 v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/ScrollEvent;>;"
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

    .local v16, "deltaX":D
    move-wide/from16 v18, p18

    .local v18, "deltaY":D
    move-wide/from16 v20, p20

    .local v20, "totalDeltaX":D
    move-wide/from16 v22, p22

    .local v22, "totalDeltaY":D
    move-wide/from16 v24, p24

    .local v24, "multiplierX":D
    move-wide/from16 v26, p26

    .local v26, "multiplierY":D
    move-object/from16 v28, p28

    .local v28, "textDeltaXUnits":Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;
    move-wide/from16 v29, p29

    .local v29, "textDeltaX":D
    move-object/from16 v31, p31

    .local v31, "textDeltaYUnits":Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;
    move-wide/from16 v32, p32

    .local v32, "textDeltaY":D
    move/from16 v34, p34

    .local v34, "touchCount":I
    move-object/from16 v35, p35

    .local v35, "pickResult":Ljavafx/scene/input/PickResult;
    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v39, v1

    move-wide/from16 v40, v2

    move-wide/from16 v42, v4

    move-wide/from16 v44, v6

    move-wide/from16 v46, v8

    move/from16 v48, v10

    move/from16 v49, v11

    move/from16 v50, v12

    move/from16 v51, v13

    move/from16 v52, v14

    move/from16 v53, v15

    move-wide/from16 v54, v16

    move-wide/from16 v56, v18

    move-wide/from16 v58, v20

    move-wide/from16 v60, v22

    move-wide/from16 v62, v24

    move-wide/from16 v64, v26

    move-object/from16 v66, v28

    move-wide/from16 v67, v29

    move-object/from16 v69, v31

    move-wide/from16 v70, v32

    move/from16 v72, v34

    move-object/from16 v73, v35

    invoke-direct/range {v36 .. v73}, Ljavafx/scene/input/ScrollEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;DDDDZZZZZZDDDDDDLjavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;DLjavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;DILjavafx/scene/input/PickResult;)V

    .line 315
    return-void
.end method

.method public constructor <init>(Ljavafx/event/EventType;DDDDZZZZZZDDDDLjavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;DLjavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;DILjavafx/scene/input/PickResult;)V
    .locals 70
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
            value = "deltaX"
        .end annotation
    .end param
    .param p18    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "deltaY"
        .end annotation
    .end param
    .param p20    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "totalDeltaX"
        .end annotation
    .end param
    .param p22    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "totalDeltaY"
        .end annotation
    .end param
    .param p24    # Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "textDeltaXUnits"
        .end annotation
    .end param
    .param p25    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "textDeltaX"
        .end annotation
    .end param
    .param p27    # Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "textDeltaYUnits"
        .end annotation
    .end param
    .param p28    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "textDeltaY"
        .end annotation
    .end param
    .param p30    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "touchCount"
        .end annotation
    .end param
    .param p31    # Ljavafx/scene/input/PickResult;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "pickResult"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;DDDDZZZZZZDDDD",
            "Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;",
            "D",
            "Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;",
            "DI",
            "Ljavafx/scene/input/PickResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 260
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/input/ScrollEvent;
    move-object/from16 v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/ScrollEvent;>;"
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

    .local v16, "deltaX":D
    move-wide/from16 v18, p18

    .local v18, "deltaY":D
    move-wide/from16 v20, p20

    .local v20, "totalDeltaX":D
    move-wide/from16 v22, p22

    .local v22, "totalDeltaY":D
    move-object/from16 v24, p24

    .local v24, "textDeltaXUnits":Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;
    move-wide/from16 v25, p25

    .local v25, "textDeltaX":D
    move-object/from16 v27, p27

    .local v27, "textDeltaYUnits":Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;
    move-wide/from16 v28, p28

    .local v28, "textDeltaY":D
    move/from16 v30, p30

    .local v30, "touchCount":I
    move-object/from16 v31, p31

    .local v31, "pickResult":Ljavafx/scene/input/PickResult;
    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v35, v1

    move-wide/from16 v36, v2

    move-wide/from16 v38, v4

    move-wide/from16 v40, v6

    move-wide/from16 v42, v8

    move/from16 v44, v10

    move/from16 v45, v11

    move/from16 v46, v12

    move/from16 v47, v13

    move/from16 v48, v14

    move/from16 v49, v15

    move-wide/from16 v50, v16

    move-wide/from16 v52, v18

    move-wide/from16 v54, v20

    move-wide/from16 v56, v22

    const-wide/high16 v58, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v60, 0x3ff0000000000000L    # 1.0

    move-object/from16 v62, v24

    move-wide/from16 v63, v25

    move-object/from16 v65, v27

    move-wide/from16 v66, v28

    move/from16 v68, v30

    move-object/from16 v69, v31

    invoke-direct/range {v32 .. v69}, Ljavafx/scene/input/ScrollEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;DDDDZZZZZZDDDDDDLjavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;DLjavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;DILjavafx/scene/input/PickResult;)V

    .line 264
    return-void
.end method


# virtual methods
.method public bridge synthetic copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ScrollEvent;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/input/ScrollEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/ScrollEvent;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/input/ScrollEvent;
    return-object v0
.end method

.method public bridge synthetic copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/GestureEvent;
    .locals 6

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ScrollEvent;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/input/ScrollEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/ScrollEvent;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/input/ScrollEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/ScrollEvent;
    .locals 6

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ScrollEvent;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/input/GestureEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/GestureEvent;

    move-result-object v3

    check-cast v3, Ljavafx/scene/input/ScrollEvent;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/input/ScrollEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/ScrollEvent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/event/EventTarget;",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;)",
            "Ljavafx/scene/input/ScrollEvent;"
        }
    .end annotation

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ScrollEvent;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v3, p3

    .local v3, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/ScrollEvent;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/input/ScrollEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/ScrollEvent;

    move-result-object v5

    move-object v4, v5

    .line 552
    .local v4, "e":Ljavafx/scene/input/ScrollEvent;
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Ljavafx/scene/input/ScrollEvent;->eventType:Ljavafx/event/EventType;

    .line 553
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/input/ScrollEvent;
    return-object v0
.end method

.method public getDeltaX()D
    .locals 3

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ScrollEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/ScrollEvent;->deltaX:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ScrollEvent;
    return-wide v0
.end method

.method public getDeltaY()D
    .locals 3

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ScrollEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/ScrollEvent;->deltaY:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ScrollEvent;
    return-wide v0
.end method

.method public getEventType()Ljavafx/event/EventType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ScrollEvent;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/input/GestureEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ScrollEvent;
    return-object v0
.end method

.method public getMultiplierX()D
    .locals 3

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ScrollEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/ScrollEvent;->multiplierX:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ScrollEvent;
    return-wide v0
.end method

.method public getMultiplierY()D
    .locals 3

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ScrollEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/ScrollEvent;->multiplierY:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ScrollEvent;
    return-wide v0
.end method

.method public getTextDeltaX()D
    .locals 3

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ScrollEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/ScrollEvent;->textDeltaX:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ScrollEvent;
    return-wide v0
.end method

.method public getTextDeltaXUnits()Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;
    .locals 2

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ScrollEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/ScrollEvent;->textDeltaXUnits:Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ScrollEvent;
    return-object v0
.end method

.method public getTextDeltaY()D
    .locals 3

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ScrollEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/ScrollEvent;->textDeltaY:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ScrollEvent;
    return-wide v0
.end method

.method public getTextDeltaYUnits()Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;
    .locals 2

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ScrollEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/ScrollEvent;->textDeltaYUnits:Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ScrollEvent;
    return-object v0
.end method

.method public getTotalDeltaX()D
    .locals 3

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ScrollEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/ScrollEvent;->totalDeltaX:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ScrollEvent;
    return-wide v0
.end method

.method public getTotalDeltaY()D
    .locals 3

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ScrollEvent;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/ScrollEvent;->totalDeltaY:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ScrollEvent;
    return-wide v0
.end method

.method public getTouchCount()I
    .locals 2

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ScrollEvent;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/input/ScrollEvent;->touchCount:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ScrollEvent;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 493
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/input/ScrollEvent;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "ScrollEvent ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 495
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string v4, "source = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->getSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 496
    move-object v3, v2

    const-string v4, ", target = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 497
    move-object v3, v2

    const-string v4, ", eventType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 498
    move-object v3, v2

    const-string v4, ", consumed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->isConsumed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 500
    move-object v3, v2

    const-string v4, ", deltaX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->getDeltaX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", deltaY = "

    .line 501
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->getDeltaY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 502
    move-object v3, v2

    const-string v4, ", totalDeltaX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->getTotalDeltaX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", totalDeltaY = "

    .line 503
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->getTotalDeltaY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 504
    move-object v3, v2

    const-string v4, ", textDeltaXUnits = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->getTextDeltaXUnits()Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", textDeltaX = "

    .line 505
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->getTextDeltaX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 506
    move-object v3, v2

    const-string v4, ", textDeltaYUnits = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->getTextDeltaYUnits()Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", textDeltaY = "

    .line 507
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->getTextDeltaY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 508
    move-object v3, v2

    const-string v4, ", touchCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->getTouchCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 509
    move-object v3, v2

    const-string v4, ", x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->getX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->getY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", z = "

    .line 510
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->getZ()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 511
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, ", direct"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 513
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/ScrollEvent;->isInertia()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 514
    move-object v3, v2

    const-string v4, ", inertia"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 517
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/ScrollEvent;->isShiftDown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 518
    move-object v3, v2

    const-string v4, ", shiftDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 520
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/ScrollEvent;->isControlDown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 521
    move-object v3, v2

    const-string v4, ", controlDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 523
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/ScrollEvent;->isAltDown()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 524
    move-object v3, v2

    const-string v4, ", altDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 526
    :cond_3
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/ScrollEvent;->isMetaDown()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 527
    move-object v3, v2

    const-string v4, ", metaDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 529
    :cond_4
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/ScrollEvent;->isShortcutDown()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 530
    move-object v3, v2

    const-string v4, ", shortcutDown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 532
    :cond_5
    move-object v3, v2

    const-string v4, ", pickResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->getPickResult()Ljavafx/scene/input/PickResult;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 534
    move-object v3, v2

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/input/ScrollEvent;
    return-object v1

    .line 511
    .restart local v1    # "this":Ljavafx/scene/input/ScrollEvent;
    :cond_6
    const-string v4, ", indirect"

    goto :goto_0
.end method
