.class public final Ljavafx/scene/input/TouchEvent;
.super Ljavafx/scene/input/InputEvent;
.source "TouchEvent.java"


# static fields
.field public static final ANY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOUCH_MOVED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOUCH_PRESSED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOUCH_RELEASED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOUCH_STATIONARY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1330613L


# instance fields
.field private final altDown:Z

.field private final controlDown:Z

.field private final eventSetId:I

.field private final metaDown:Z

.field private final shiftDown:Z

.field private final touchPoint:Ljavafx/scene/input/TouchPoint;

.field private final touchPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/input/TouchPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 67
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/InputEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "TOUCH"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/TouchEvent;->ANY:Ljavafx/event/EventType;

    .line 74
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/TouchEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "TOUCH_PRESSED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/TouchEvent;->TOUCH_PRESSED:Ljavafx/event/EventType;

    .line 80
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/TouchEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "TOUCH_MOVED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/TouchEvent;->TOUCH_MOVED:Ljavafx/event/EventType;

    .line 86
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/TouchEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "TOUCH_RELEASED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/TouchEvent;->TOUCH_RELEASED:Ljavafx/event/EventType;

    .line 93
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/TouchEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "TOUCH_STATIONARY"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/TouchEvent;->TOUCH_STATIONARY:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljavafx/scene/input/TouchPoint;Ljava/util/List;IZZZZ)V
    .locals 15
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
    .param p4    # Ljavafx/scene/input/TouchPoint;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "touchPoint"
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "touchPoints"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "eventSetId"
        .end annotation
    .end param
    .param p7    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "shiftDown"
        .end annotation
    .end param
    .param p8    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "controlDown"
        .end annotation
    .end param
    .param p9    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "altDown"
        .end annotation
    .end param
    .param p10    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "metaDown"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/event/EventTarget;",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/TouchEvent;",
            ">;",
            "Ljavafx/scene/input/TouchPoint;",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/input/TouchPoint;",
            ">;IZZZZ)V"
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchEvent;
    move-object/from16 v1, p1

    .local v1, "source":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "target":Ljavafx/event/EventTarget;
    move-object/from16 v3, p3

    .local v3, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/TouchEvent;>;"
    move-object/from16 v4, p4

    .local v4, "touchPoint":Ljavafx/scene/input/TouchPoint;
    move-object/from16 v5, p5

    .local v5, "touchPoints":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/input/TouchPoint;>;"
    move/from16 v6, p6

    .local v6, "eventSetId":I
    move/from16 v7, p7

    .local v7, "shiftDown":Z
    move/from16 v8, p8

    .local v8, "controlDown":Z
    move/from16 v9, p9

    .local v9, "altDown":Z
    move/from16 v10, p10

    .local v10, "metaDown":Z
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    invoke-direct {v11, v12, v13, v14}, Ljavafx/scene/input/InputEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 115
    move-object v11, v0

    move-object v12, v5

    if-eqz v12, :cond_0

    move-object v12, v5

    invoke-static {v12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    :goto_0
    iput-object v12, v11, Ljavafx/scene/input/TouchEvent;->touchPoints:Ljava/util/List;

    .line 116
    move-object v11, v0

    move v12, v6

    iput v12, v11, Ljavafx/scene/input/TouchEvent;->eventSetId:I

    .line 117
    move-object v11, v0

    move v12, v7

    iput-boolean v12, v11, Ljavafx/scene/input/TouchEvent;->shiftDown:Z

    .line 118
    move-object v11, v0

    move v12, v8

    iput-boolean v12, v11, Ljavafx/scene/input/TouchEvent;->controlDown:Z

    .line 119
    move-object v11, v0

    move v12, v9

    iput-boolean v12, v11, Ljavafx/scene/input/TouchEvent;->altDown:Z

    .line 120
    move-object v11, v0

    move v12, v10

    iput-boolean v12, v11, Ljavafx/scene/input/TouchEvent;->metaDown:Z

    .line 121
    move-object v11, v0

    move-object v12, v4

    iput-object v12, v11, Ljavafx/scene/input/TouchEvent;->touchPoint:Ljavafx/scene/input/TouchPoint;

    .line 122
    return-void

    .line 115
    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavafx/event/EventType;Ljavafx/scene/input/TouchPoint;Ljava/util/List;IZZZZ)V
    .locals 20
    .param p1    # Ljavafx/event/EventType;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "eventType"
        .end annotation
    .end param
    .param p2    # Ljavafx/scene/input/TouchPoint;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "touchPoint"
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "touchPoints"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "eventSetId"
        .end annotation
    .end param
    .param p5    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "shiftDown"
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "controlDown"
        .end annotation
    .end param
    .param p7    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "altDown"
        .end annotation
    .end param
    .param p8    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "metaDown"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/TouchEvent;",
            ">;",
            "Ljavafx/scene/input/TouchPoint;",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/input/TouchPoint;",
            ">;IZZZZ)V"
        }
    .end annotation

    .prologue
    .line 141
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchEvent;
    move-object/from16 v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/TouchEvent;>;"
    move-object/from16 v2, p2

    .local v2, "touchPoint":Ljavafx/scene/input/TouchPoint;
    move-object/from16 v3, p3

    .local v3, "touchPoints":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/input/TouchPoint;>;"
    move/from16 v4, p4

    .local v4, "eventSetId":I
    move/from16 v5, p5

    .local v5, "shiftDown":Z
    move/from16 v6, p6

    .local v6, "controlDown":Z
    move/from16 v7, p7

    .local v7, "altDown":Z
    move/from16 v8, p8

    .local v8, "metaDown":Z
    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    invoke-direct/range {v9 .. v19}, Ljavafx/scene/input/TouchEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljavafx/scene/input/TouchPoint;Ljava/util/List;IZZZZ)V

    .line 143
    return-void
.end method

.method private static recomputeToSource(Ljavafx/scene/input/TouchEvent;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "event":Ljavafx/scene/input/TouchEvent;
    move-object v1, p1

    .local v1, "oldSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newSource":Ljava/lang/Object;
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/input/TouchEvent;->touchPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/input/TouchPoint;

    move-object v4, v5

    .line 164
    .local v4, "tp":Ljavafx/scene/input/TouchPoint;
    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/input/TouchPoint;->recomputeToSource(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    goto :goto_0

    .line 166
    .end local v4    # "tp":Ljavafx/scene/input/TouchPoint;
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchEvent;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/input/TouchEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/TouchEvent;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/input/TouchEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/TouchEvent;
    .locals 7

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchEvent;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Ljavafx/scene/input/InputEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;

    move-result-object v4

    check-cast v4, Ljavafx/scene/input/TouchEvent;

    move-object v3, v4

    .line 175
    .local v3, "e":Ljavafx/scene/input/TouchEvent;
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/input/TouchEvent;->getSource()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    invoke-static {v4, v5, v6}, Ljavafx/scene/input/TouchEvent;->recomputeToSource(Ljavafx/scene/input/TouchEvent;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/input/TouchEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/TouchEvent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/event/EventTarget;",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/TouchEvent;",
            ">;)",
            "Ljavafx/scene/input/TouchEvent;"
        }
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchEvent;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v3, p3

    .local v3, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/TouchEvent;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/input/TouchEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/TouchEvent;

    move-result-object v5

    move-object v4, v5

    .line 189
    .local v4, "e":Ljavafx/scene/input/TouchEvent;
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Ljavafx/scene/input/TouchEvent;->eventType:Ljavafx/event/EventType;

    .line 190
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/input/TouchEvent;
    return-object v0
.end method

.method public final getEventSetId()I
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchEvent;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/input/TouchEvent;->eventSetId:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/TouchEvent;
    return v0
.end method

.method public getEventType()Ljavafx/event/EventType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/TouchEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchEvent;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/input/InputEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/TouchEvent;
    return-object v0
.end method

.method public getTouchCount()I
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/TouchEvent;->touchPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/TouchEvent;
    return v0
.end method

.method public getTouchPoint()Ljavafx/scene/input/TouchPoint;
    .locals 2

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/TouchEvent;->touchPoint:Ljavafx/scene/input/TouchPoint;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/TouchEvent;
    return-object v0
.end method

.method public getTouchPoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/input/TouchPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/TouchEvent;->touchPoints:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/TouchEvent;
    return-object v0
.end method

.method public final isAltDown()Z
    .locals 2

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/TouchEvent;->altDown:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/TouchEvent;
    return v0
.end method

.method public final isControlDown()Z
    .locals 2

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/TouchEvent;->controlDown:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/TouchEvent;
    return v0
.end method

.method public final isMetaDown()Z
    .locals 2

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/TouchEvent;->metaDown:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/TouchEvent;
    return v0
.end method

.method public final isShiftDown()Z
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/TouchEvent;->shiftDown:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/TouchEvent;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchEvent;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "TouchEvent ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 302
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    const-string v3, "source = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/TouchEvent;->getSource()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 303
    move-object v2, v1

    const-string v3, ", target = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/TouchEvent;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 304
    move-object v2, v1

    const-string v3, ", eventType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/TouchEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 305
    move-object v2, v1

    const-string v3, ", consumed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/TouchEvent;->isConsumed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 306
    move-object v2, v1

    const-string v3, ", touchCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/TouchEvent;->getTouchCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 307
    move-object v2, v1

    const-string v3, ", eventSetId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/TouchEvent;->getEventSetId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 309
    move-object v2, v1

    const-string v3, ", touchPoint = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/TouchEvent;->getTouchPoint()Ljavafx/scene/input/TouchPoint;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/input/TouchPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 311
    move-object v2, v1

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/TouchEvent;
    return-object v0
.end method
