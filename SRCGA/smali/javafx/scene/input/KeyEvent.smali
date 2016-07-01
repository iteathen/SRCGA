.class public final Ljavafx/scene/input/KeyEvent;
.super Ljavafx/scene/input/InputEvent;
.source "KeyEvent.java"


# static fields
.field public static final ANY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final CHAR_UNDEFINED:Ljava/lang/String;

.field public static final KEY_PRESSED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_RELEASED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_TYPED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1330613L


# instance fields
.field private final altDown:Z

.field private final character:Ljava/lang/String;

.field private final code:Ljavafx/scene/input/KeyCode;

.field private final controlDown:Z

.field private final metaDown:Z

.field private final shiftDown:Z

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 93
    new-instance v1, Ljavafx/event/EventType;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/InputEvent;->ANY:Ljavafx/event/EventType;

    const-string v4, "KEY"

    invoke-direct {v2, v3, v4}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v1, Ljavafx/scene/input/KeyEvent;->ANY:Ljavafx/event/EventType;

    .line 99
    new-instance v1, Ljavafx/event/EventType;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyEvent;->ANY:Ljavafx/event/EventType;

    const-string v4, "KEY_PRESSED"

    invoke-direct {v2, v3, v4}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v1, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    .line 105
    new-instance v1, Ljavafx/event/EventType;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyEvent;->ANY:Ljavafx/event/EventType;

    const-string v4, "KEY_RELEASED"

    invoke-direct {v2, v3, v4}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v1, Ljavafx/scene/input/KeyEvent;->KEY_RELEASED:Ljavafx/event/EventType;

    .line 114
    new-instance v1, Ljavafx/event/EventType;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyEvent;->ANY:Ljavafx/event/EventType;

    const-string v4, "KEY_TYPED"

    invoke-direct {v2, v3, v4}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v1, Ljavafx/scene/input/KeyEvent;->KEY_TYPED:Ljavafx/event/EventType;

    .line 118
    new-instance v1, Ljavafx/scene/input/KeyEvent$1;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljavafx/scene/input/KeyEvent$1;-><init>()V

    move-object v0, v1

    .line 176
    .local v0, "a":Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotInputAccessor;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/robot/impl/FXRobotHelper;->setInputAccessor(Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotInputAccessor;)V

    .line 239
    sget-object v1, Ljavafx/scene/input/KeyCode;->UNDEFINED:Ljavafx/scene/input/KeyCode;

    iget-object v1, v1, Ljavafx/scene/input/KeyCode;->ch:Ljava/lang/String;

    sput-object v1, Ljavafx/scene/input/KeyEvent;->CHAR_UNDEFINED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljava/lang/String;Ljava/lang/String;Ljavafx/scene/input/KeyCode;ZZZZ)V
    .locals 16
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
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "character"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "text"
        .end annotation
    .end param
    .param p6    # Ljavafx/scene/input/KeyCode;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "code"
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
            "Ljavafx/scene/input/KeyEvent;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljavafx/scene/input/KeyCode;",
            "ZZZZ)V"
        }
    .end annotation

    .prologue
    .line 196
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyEvent;
    move-object/from16 v1, p1

    .local v1, "source":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "target":Ljavafx/event/EventTarget;
    move-object/from16 v3, p3

    .local v3, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/KeyEvent;>;"
    move-object/from16 v4, p4

    .local v4, "character":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "text":Ljava/lang/String;
    move-object/from16 v6, p6

    .local v6, "code":Ljavafx/scene/input/KeyCode;
    move/from16 v7, p7

    .local v7, "shiftDown":Z
    move/from16 v8, p8

    .local v8, "controlDown":Z
    move/from16 v9, p9

    .local v9, "altDown":Z
    move/from16 v10, p10

    .local v10, "metaDown":Z
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    invoke-direct {v12, v13, v14, v15}, Ljavafx/scene/input/InputEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 197
    move-object v12, v3

    sget-object v13, Ljavafx/scene/input/KeyEvent;->KEY_TYPED:Ljavafx/event/EventType;

    if-ne v12, v13, :cond_0

    const/4 v12, 0x1

    :goto_0
    move v11, v12

    .line 199
    .local v11, "isKeyTyped":Z
    move-object v12, v0

    move v13, v11

    if-eqz v13, :cond_1

    move-object v13, v4

    :goto_1
    iput-object v13, v12, Ljavafx/scene/input/KeyEvent;->character:Ljava/lang/String;

    .line 200
    move-object v12, v0

    move v13, v11

    if-eqz v13, :cond_2

    const-string v13, ""

    :goto_2
    iput-object v13, v12, Ljavafx/scene/input/KeyEvent;->text:Ljava/lang/String;

    .line 201
    move-object v12, v0

    move v13, v11

    if-eqz v13, :cond_3

    sget-object v13, Ljavafx/scene/input/KeyCode;->UNDEFINED:Ljavafx/scene/input/KeyCode;

    :goto_3
    iput-object v13, v12, Ljavafx/scene/input/KeyEvent;->code:Ljavafx/scene/input/KeyCode;

    .line 202
    move-object v12, v0

    move v13, v7

    iput-boolean v13, v12, Ljavafx/scene/input/KeyEvent;->shiftDown:Z

    .line 203
    move-object v12, v0

    move v13, v8

    iput-boolean v13, v12, Ljavafx/scene/input/KeyEvent;->controlDown:Z

    .line 204
    move-object v12, v0

    move v13, v9

    iput-boolean v13, v12, Ljavafx/scene/input/KeyEvent;->altDown:Z

    .line 205
    move-object v12, v0

    move v13, v10

    iput-boolean v13, v12, Ljavafx/scene/input/KeyEvent;->metaDown:Z

    .line 206
    return-void

    .line 197
    .end local v11    # "isKeyTyped":Z
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 199
    .restart local v11    # "isKeyTyped":Z
    :cond_1
    sget-object v13, Ljavafx/scene/input/KeyEvent;->CHAR_UNDEFINED:Ljava/lang/String;

    goto :goto_1

    .line 200
    :cond_2
    move-object v13, v5

    goto :goto_2

    .line 201
    :cond_3
    move-object v13, v6

    goto :goto_3
.end method

.method public constructor <init>(Ljavafx/event/EventType;Ljava/lang/String;Ljava/lang/String;Ljavafx/scene/input/KeyCode;ZZZZ)V
    .locals 12
    .param p1    # Ljavafx/event/EventType;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "eventType"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "character"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "text"
        .end annotation
    .end param
    .param p4    # Ljavafx/scene/input/KeyCode;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "code"
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
            "Ljavafx/scene/input/KeyEvent;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljavafx/scene/input/KeyCode;",
            "ZZZZ)V"
        }
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyEvent;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/KeyEvent;>;"
    move-object v2, p2

    .local v2, "character":Ljava/lang/String;
    move-object v3, p3

    .local v3, "text":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "code":Ljavafx/scene/input/KeyCode;
    move/from16 v5, p5

    .local v5, "shiftDown":Z
    move/from16 v6, p6

    .local v6, "controlDown":Z
    move/from16 v7, p7

    .local v7, "altDown":Z
    move/from16 v8, p8

    .local v8, "metaDown":Z
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Ljavafx/scene/input/InputEvent;-><init>(Ljavafx/event/EventType;)V

    .line 224
    move-object v10, v1

    sget-object v11, Ljavafx/scene/input/KeyEvent;->KEY_TYPED:Ljavafx/event/EventType;

    if-ne v10, v11, :cond_0

    const/4 v10, 0x1

    :goto_0
    move v9, v10

    .line 226
    .local v9, "isKeyTyped":Z
    move-object v10, v0

    move v11, v9

    if-eqz v11, :cond_1

    move-object v11, v2

    :goto_1
    iput-object v11, v10, Ljavafx/scene/input/KeyEvent;->character:Ljava/lang/String;

    .line 227
    move-object v10, v0

    move v11, v9

    if-eqz v11, :cond_2

    const-string v11, ""

    :goto_2
    iput-object v11, v10, Ljavafx/scene/input/KeyEvent;->text:Ljava/lang/String;

    .line 228
    move-object v10, v0

    move v11, v9

    if-eqz v11, :cond_3

    sget-object v11, Ljavafx/scene/input/KeyCode;->UNDEFINED:Ljavafx/scene/input/KeyCode;

    :goto_3
    iput-object v11, v10, Ljavafx/scene/input/KeyEvent;->code:Ljavafx/scene/input/KeyCode;

    .line 229
    move-object v10, v0

    move v11, v5

    iput-boolean v11, v10, Ljavafx/scene/input/KeyEvent;->shiftDown:Z

    .line 230
    move-object v10, v0

    move v11, v6

    iput-boolean v11, v10, Ljavafx/scene/input/KeyEvent;->controlDown:Z

    .line 231
    move-object v10, v0

    move v11, v7

    iput-boolean v11, v10, Ljavafx/scene/input/KeyEvent;->altDown:Z

    .line 232
    move-object v10, v0

    move v11, v8

    iput-boolean v11, v10, Ljavafx/scene/input/KeyEvent;->metaDown:Z

    .line 233
    return-void

    .line 224
    .end local v9    # "isKeyTyped":Z
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 226
    .restart local v9    # "isKeyTyped":Z
    :cond_1
    sget-object v11, Ljavafx/scene/input/KeyEvent;->CHAR_UNDEFINED:Ljava/lang/String;

    goto :goto_1

    .line 227
    :cond_2
    move-object v11, v3

    goto :goto_2

    .line 228
    :cond_3
    move-object v11, v4

    goto :goto_3
.end method


# virtual methods
.method public bridge synthetic copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyEvent;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/input/KeyEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/KeyEvent;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/input/KeyEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/KeyEvent;
    .locals 6

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyEvent;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/input/InputEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;

    move-result-object v3

    check-cast v3, Ljavafx/scene/input/KeyEvent;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/input/KeyEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/KeyEvent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/event/EventTarget;",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;)",
            "Ljavafx/scene/input/KeyEvent;"
        }
    .end annotation

    .prologue
    .line 439
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyEvent;
    move-object v1, p1

    .local v1, "source":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "target":Ljavafx/event/EventTarget;
    move-object v3, p3

    .local v3, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/KeyEvent;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/input/KeyEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/KeyEvent;

    move-result-object v5

    move-object v4, v5

    .line 440
    .local v4, "e":Ljavafx/scene/input/KeyEvent;
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Ljavafx/scene/input/KeyEvent;->eventType:Ljavafx/event/EventType;

    .line 441
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/input/KeyEvent;
    return-object v0
.end method

.method public final getCharacter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/KeyEvent;->character:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyEvent;
    return-object v0
.end method

.method public final getCode()Ljavafx/scene/input/KeyCode;
    .locals 2

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/KeyEvent;->code:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyEvent;
    return-object v0
.end method

.method public getEventType()Ljavafx/event/EventType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyEvent;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/input/InputEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyEvent;
    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/KeyEvent;->text:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyEvent;
    return-object v0
.end method

.method public final isAltDown()Z
    .locals 2

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/KeyEvent;->altDown:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyEvent;
    return v0
.end method

.method public final isControlDown()Z
    .locals 2

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/KeyEvent;->controlDown:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyEvent;
    return v0
.end method

.method public final isMetaDown()Z
    .locals 2

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/KeyEvent;->metaDown:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyEvent;
    return v0
.end method

.method public final isShiftDown()Z
    .locals 2

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyEvent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/KeyEvent;->shiftDown:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyEvent;
    return v0
.end method

.method public final isShortcutDown()Z
    .locals 3

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyEvent;
    sget-object v1, Ljavafx/scene/input/KeyEvent$2;->$SwitchMap$javafx$scene$input$KeyCode:[I

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->getPlatformShortcutKey()Ljavafx/scene/input/KeyCode;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 386
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyEvent;
    :goto_0
    return v0

    .line 374
    .restart local v0    # "this":Ljavafx/scene/input/KeyEvent;
    :pswitch_0
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/KeyEvent;->shiftDown:Z

    move v0, v1

    goto :goto_0

    .line 377
    :pswitch_1
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/KeyEvent;->controlDown:Z

    move v0, v1

    goto :goto_0

    .line 380
    :pswitch_2
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/KeyEvent;->altDown:Z

    move v0, v1

    goto :goto_0

    .line 383
    :pswitch_3
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/KeyEvent;->metaDown:Z

    move v0, v1

    goto :goto_0

    .line 372
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
    .locals 6

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyEvent;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "KeyEvent ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 397
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    const-string v3, "source = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getSource()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 398
    move-object v2, v1

    const-string v3, ", target = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 399
    move-object v2, v1

    const-string v3, ", eventType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 400
    move-object v2, v1

    const-string v3, ", consumed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->isConsumed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 402
    move-object v2, v1

    const-string v3, ", character = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCharacter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 403
    move-object v2, v1

    const-string v3, ", text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 404
    move-object v2, v1

    const-string v3, ", code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 406
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->isShiftDown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    move-object v2, v1

    const-string v3, ", shiftDown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 409
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->isControlDown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    move-object v2, v1

    const-string v3, ", controlDown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 412
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->isAltDown()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 413
    move-object v2, v1

    const-string v3, ", altDown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 415
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->isMetaDown()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 416
    move-object v2, v1

    const-string v3, ", metaDown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 418
    :cond_3
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->isShortcutDown()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 419
    move-object v2, v1

    const-string v3, ", shortcutDown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 422
    :cond_4
    move-object v2, v1

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/KeyEvent;
    return-object v0
.end method
