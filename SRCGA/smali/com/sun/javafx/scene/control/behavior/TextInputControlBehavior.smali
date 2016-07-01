.class public abstract Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;
.super Lcom/sun/javafx/scene/control/behavior/BehaviorBase;
.source "TextInputControlBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljavafx/scene/control/TextInputControl;",
        ">",
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<TT;>;"
    }
.end annotation


# static fields
.field protected static final TEXT_INPUT_BINDINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/behavior/KeyBinding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bidi:Ljava/text/Bidi;

.field private editing:Z

.field private lastEvent:Ljavafx/scene/input/KeyEvent;

.field private mixed:Ljava/lang/Boolean;

.field private rtlText:Ljava/lang/Boolean;

.field textInputControl:Ljavafx/scene/control/TextInputControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private textListener:Ljavafx/beans/InvalidationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->TEXT_INPUT_BINDINGS:Ljava/util/List;

    .line 55
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->TEXT_INPUT_BINDINGS:Ljava/util/List;

    sget-object v1, Lcom/sun/javafx/scene/control/behavior/TextInputControlBindings;->BINDINGS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 58
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->TEXT_INPUT_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "Consume"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 59
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/TextInputControl;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/behavior/KeyBinding;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, p1

    .local v1, "textInputControl":Ljavafx/scene/control/TextInputControl;, "TT;"
    move-object v2, p2

    .local v2, "bindings":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/behavior/KeyBinding;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    .line 73
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->textListener:Ljavafx/beans/InvalidationListener;

    .line 244
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->bidi:Ljava/text/Bidi;

    .line 245
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->mixed:Ljava/lang/Boolean;

    .line 246
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->rtlText:Ljava/lang/Boolean;

    .line 452
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->editing:Z

    .line 88
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->textInputControl:Ljavafx/scene/control/TextInputControl;

    .line 90
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->textListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/StringProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 91
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->lambda$new$184(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private cut()V
    .locals 3

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TextInputControl;

    move-object v1, v2

    .line 350
    .local v1, "textInputControl":Ljavafx/scene/control/TextInputControl;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->cut()V

    .line 351
    return-void
.end method

.method private defaultKeyTyped(Ljavafx/scene/input/KeyEvent;)V
    .locals 11

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/KeyEvent;
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TextInputControl;

    move-object v2, v7

    .line 212
    .local v2, "textInput":Ljavafx/scene/control/TextInputControl;
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->isEditable()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->isDisabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/KeyEvent;->getCharacter()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 217
    .local v3, "character":Ljava/lang/String;
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 220
    :cond_2
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/KeyEvent;->isControlDown()Z

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/KeyEvent;->isAltDown()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/KeyEvent;->isMetaDown()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 221
    :cond_3
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/KeyEvent;->isControlDown()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/KeyEvent;->isAltDown()Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    goto :goto_0

    .line 226
    :cond_6
    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x1f

    if-le v7, v8, :cond_7

    move-object v7, v3

    const/4 v8, 0x0

    .line 227
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7f

    if-eq v7, v8, :cond_7

    move-object v7, v1

    .line 228
    invoke-virtual {v7}, Ljavafx/scene/input/KeyEvent;->isMetaDown()Z

    move-result v7

    if-nez v7, :cond_7

    .line 229
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->getSelection()Ljavafx/scene/control/IndexRange;

    move-result-object v7

    move-object v4, v7

    .line 230
    .local v4, "selection":Ljavafx/scene/control/IndexRange;
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/control/IndexRange;->getStart()I

    move-result v7

    move v5, v7

    .line 231
    .local v5, "start":I
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/control/IndexRange;->getEnd()I

    move-result v7

    move v6, v7

    .line 237
    .local v6, "end":I
    move-object v7, v0

    move v8, v5

    move v9, v6

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->replaceText(IILjava/lang/String;)V

    .line 240
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->scrollCharacterToVisible(I)V

    .line 242
    .end local v4    # "selection":Ljavafx/scene/control/IndexRange;
    .end local v5    # "start":I
    .end local v6    # "end":I
    :cond_7
    goto :goto_0
.end method

.method private deleteNextChar()V
    .locals 3

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->deleteChar(Z)V

    .line 315
    return-void
.end method

.method private deletePreviousChar()V
    .locals 3

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->deleteChar(Z)V

    .line 311
    return-void
.end method

.method private deleteSelection()V
    .locals 5

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TextInputControl;

    move-object v1, v3

    .line 341
    .local v1, "textInputControl":Ljavafx/scene/control/TextInputControl;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl;->getSelection()Ljavafx/scene/control/IndexRange;

    move-result-object v3

    move-object v2, v3

    .line 343
    .local v2, "selection":Ljavafx/scene/control/IndexRange;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/IndexRange;->getLength()I

    move-result v3

    if-lez v3, :cond_0

    .line 344
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->deleteChar(Z)V

    .line 346
    :cond_0
    return-void
.end method

.method private getBidi()Ljava/text/Bidi;
    .locals 8

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->bidi:Ljava/text/Bidi;

    if-nez v1, :cond_0

    .line 256
    move-object v1, v0

    new-instance v2, Ljava/text/Bidi;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->textInputControl:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/StringProperty;->getValueSafe()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->textInputControl:Ljavafx/scene/control/TextInputControl;

    .line 257
    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v5

    sget-object v6, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-direct {v3, v4, v5}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->bidi:Ljava/text/Bidi;

    .line 261
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->bidi:Ljava/text/Bidi;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    return-object v0

    .line 257
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private invalidateBidi()V
    .locals 3

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->bidi:Ljava/text/Bidi;

    .line 250
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->mixed:Ljava/lang/Boolean;

    .line 251
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->rtlText:Ljava/lang/Boolean;

    .line 252
    return-void
.end method

.method private synthetic lambda$new$184(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->invalidateBidi()V

    .line 75
    return-void
.end method

.method private leftWord()V
    .locals 2

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->isRTLText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->nextWord()V

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->previousWord()V

    goto :goto_0
.end method

.method private nextCharacterVisually(Z)V
    .locals 5

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move v1, p1

    .local v1, "moveRight":Z
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->isMixed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->textInputControl:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    move-object v2, v3

    .line 285
    .local v2, "skin":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<**>;"
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->nextCharacterVisually(Z)V

    .line 286
    .line 291
    .end local v2    # "skin":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<**>;"
    :goto_0
    return-void

    .line 286
    :cond_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->isRTLText()Z

    move-result v4

    if-eq v3, v4, :cond_1

    .line 287
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->textInputControl:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl;->forward()V

    goto :goto_0

    .line 289
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->textInputControl:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl;->backward()V

    goto :goto_0
.end method

.method private paste()V
    .locals 3

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TextInputControl;

    move-object v1, v2

    .line 355
    .local v1, "textInputControl":Ljavafx/scene/control/TextInputControl;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->paste()V

    .line 356
    return-void
.end method

.method private rightWord()V
    .locals 2

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->isRTLText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->previousWord()V

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->nextWord()V

    goto :goto_0
.end method

.method private selectEnd()V
    .locals 2

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->selectEnd()V

    .line 441
    return-void
.end method

.method private selectEndExtend()V
    .locals 4

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TextInputControl;

    move-object v1, v2

    .line 449
    .local v1, "textInputControl":Ljavafx/scene/control/TextInputControl;
    move-object v2, v1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextInputControl;->extendSelection(I)V

    .line 450
    return-void
.end method

.method private selectHome()V
    .locals 2

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->selectHome()V

    .line 437
    return-void
.end method

.method private selectHomeExtend()V
    .locals 3

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TextInputControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TextInputControl;->extendSelection(I)V

    .line 445
    return-void
.end method

.method private selectLeft()V
    .locals 2

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->isRTLText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->textInputControl:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->selectForward()V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->textInputControl:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->selectBackward()V

    goto :goto_0
.end method

.method private selectLeftWord()V
    .locals 2

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->isRTLText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->selectNextWord()V

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->selectPreviousWord()V

    goto :goto_0
.end method

.method private selectRight()V
    .locals 2

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->isRTLText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->textInputControl:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->selectBackward()V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->textInputControl:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->selectForward()V

    goto :goto_0
.end method

.method private selectRightWord()V
    .locals 2

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->isRTLText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->selectPreviousWord()V

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->selectNextWord()V

    goto :goto_0
.end method


# virtual methods
.method public callAction(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TextInputControl;

    move-object v2, v4

    .line 131
    .local v2, "textInputControl":Ljavafx/scene/control/TextInputControl;
    const/4 v4, 0x0

    move v3, v4

    .line 133
    .local v3, "done":Z
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->setCaretAnimating(Z)V

    .line 135
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->isEditable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->setEditing(Z)V

    .line 137
    const/4 v4, 0x1

    move v3, v4

    .line 138
    const-string v4, "InputCharacter"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->lastEvent:Ljavafx/scene/input/KeyEvent;

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->defaultKeyTyped(Ljavafx/scene/input/KeyEvent;)V

    .line 152
    :goto_0
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->setEditing(Z)V

    .line 154
    :cond_0
    move v4, v3

    if-nez v4, :cond_1

    .line 155
    const/4 v4, 0x1

    move v3, v4

    .line 156
    const-string v4, "Copy"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->copy()V

    .line 191
    :cond_1
    :goto_1
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->setCaretAnimating(Z)V

    .line 193
    move v4, v3

    if-nez v4, :cond_2

    .line 194
    const-string v4, "TraverseNext"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->traverseNext()V

    .line 200
    :cond_2
    :goto_2
    return-void

    .line 139
    :cond_3
    const-string v4, "Cut"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->cut()V

    goto :goto_0

    .line 140
    :cond_4
    const-string v4, "Paste"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->paste()V

    goto :goto_0

    .line 141
    :cond_5
    const-string v4, "DeleteFromLineStart"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->deleteFromLineStart()V

    goto :goto_0

    .line 142
    :cond_6
    const-string v4, "DeletePreviousChar"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->deletePreviousChar()V

    goto :goto_0

    .line 143
    :cond_7
    const-string v4, "DeleteNextChar"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->deleteNextChar()V

    goto :goto_0

    .line 144
    :cond_8
    const-string v4, "DeletePreviousWord"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->deletePreviousWord()V

    goto :goto_0

    .line 145
    :cond_9
    const-string v4, "DeleteNextWord"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->deleteNextWord()V

    goto/16 :goto_0

    .line 146
    :cond_a
    const-string v4, "DeleteSelection"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->deleteSelection()V

    goto/16 :goto_0

    .line 147
    :cond_b
    const-string v4, "Undo"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->undo()V

    goto/16 :goto_0

    .line 148
    :cond_c
    const-string v4, "Redo"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->redo()V

    goto/16 :goto_0

    .line 150
    :cond_d
    const/4 v4, 0x0

    move v3, v4

    goto/16 :goto_0

    .line 157
    :cond_e
    const-string v4, "SelectBackward"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->selectBackward()V

    goto/16 :goto_1

    .line 158
    :cond_f
    const-string v4, "SelectForward"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->selectForward()V

    goto/16 :goto_1

    .line 159
    :cond_10
    const-string v4, "SelectLeft"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->selectLeft()V

    goto/16 :goto_1

    .line 160
    :cond_11
    const-string v4, "SelectRight"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->selectRight()V

    goto/16 :goto_1

    .line 161
    :cond_12
    const-string v4, "PreviousWord"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->previousWord()V

    goto/16 :goto_1

    .line 162
    :cond_13
    const-string v4, "NextWord"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->nextWord()V

    goto/16 :goto_1

    .line 163
    :cond_14
    const-string v4, "LeftWord"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->leftWord()V

    goto/16 :goto_1

    .line 164
    :cond_15
    const-string v4, "RightWord"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->rightWord()V

    goto/16 :goto_1

    .line 165
    :cond_16
    const-string v4, "SelectPreviousWord"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->selectPreviousWord()V

    goto/16 :goto_1

    .line 166
    :cond_17
    const-string v4, "SelectNextWord"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->selectNextWord()V

    goto/16 :goto_1

    .line 167
    :cond_18
    const-string v4, "SelectLeftWord"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->selectLeftWord()V

    goto/16 :goto_1

    .line 168
    :cond_19
    const-string v4, "SelectRightWord"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->selectRightWord()V

    goto/16 :goto_1

    .line 169
    :cond_1a
    const-string v4, "SelectWord"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->selectWord()V

    goto/16 :goto_1

    .line 170
    :cond_1b
    const-string v4, "SelectAll"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->selectAll()V

    goto/16 :goto_1

    .line 171
    :cond_1c
    const-string v4, "Home"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->home()V

    goto/16 :goto_1

    .line 172
    :cond_1d
    const-string v4, "End"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->end()V

    goto/16 :goto_1

    .line 173
    :cond_1e
    const-string v4, "Forward"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->forward()V

    goto/16 :goto_1

    .line 174
    :cond_1f
    const-string v4, "Backward"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->backward()V

    goto/16 :goto_1

    .line 175
    :cond_20
    const-string v4, "Right"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->nextCharacterVisually(Z)V

    goto/16 :goto_1

    .line 176
    :cond_21
    const-string v4, "Left"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->nextCharacterVisually(Z)V

    goto/16 :goto_1

    .line 177
    :cond_22
    const-string v4, "Fire"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->lastEvent:Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->fire(Ljavafx/scene/input/KeyEvent;)V

    goto/16 :goto_1

    .line 178
    :cond_23
    const-string v4, "Cancel"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->lastEvent:Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->cancelEdit(Ljavafx/scene/input/KeyEvent;)V

    goto/16 :goto_1

    .line 179
    :cond_24
    const-string v4, "Unselect"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->deselect()V

    goto/16 :goto_1

    .line 180
    :cond_25
    const-string v4, "SelectHome"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->selectHome()V

    goto/16 :goto_1

    .line 181
    :cond_26
    const-string v4, "SelectEnd"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->selectEnd()V

    goto/16 :goto_1

    .line 182
    :cond_27
    const-string v4, "SelectHomeExtend"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->selectHomeExtend()V

    goto/16 :goto_1

    .line 183
    :cond_28
    const-string v4, "SelectEndExtend"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->selectEndExtend()V

    goto/16 :goto_1

    .line 184
    :cond_29
    const-string v4, "ToParent"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->lastEvent:Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->forwardToParent(Ljavafx/scene/input/KeyEvent;)V

    goto/16 :goto_1

    .line 185
    :cond_2a
    const-string v4, "UseVK"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    sget-object v4, Ljavafx/application/ConditionalFeature;->VIRTUAL_KEYBOARD:Ljavafx/application/ConditionalFeature;

    invoke-static {v4}, Lcom/sun/javafx/application/PlatformImpl;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 186
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->toggleUseVK()V

    goto/16 :goto_1

    .line 188
    :cond_2b
    const/4 v4, 0x0

    move v3, v4

    goto/16 :goto_1

    .line 195
    :cond_2c
    const-string v4, "TraversePrevious"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->traversePrevious()V

    goto/16 :goto_2

    .line 196
    :cond_2d
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callAction(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected callActionForEvent(Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->lastEvent:Ljavafx/scene/input/KeyEvent;

    .line 126
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callActionForEvent(Ljavafx/scene/input/KeyEvent;)V

    .line 127
    return-void
.end method

.method protected cancelEdit(Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/KeyEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->forwardToParent(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method protected abstract deleteChar(Z)V
.end method

.method protected abstract deleteFromLineStart()V
.end method

.method protected deleteNextWord()V
    .locals 8

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TextInputControl;

    move-object v1, v4

    .line 330
    .local v1, "textInputControl":Ljavafx/scene/control/TextInputControl;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v4

    move v2, v4

    .line 332
    .local v2, "start":I
    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 333
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->nextWord()V

    .line 334
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v4

    move v3, v4

    .line 335
    .local v3, "end":I
    move-object v4, v0

    move v5, v2

    move v6, v3

    const-string v7, ""

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->replaceText(IILjava/lang/String;)V

    .line 337
    .end local v3    # "end":I
    :cond_0
    return-void
.end method

.method protected deletePreviousWord()V
    .locals 8

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TextInputControl;

    move-object v1, v4

    .line 319
    .local v1, "textInputControl":Ljavafx/scene/control/TextInputControl;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v4

    move v2, v4

    .line 321
    .local v2, "end":I
    move v4, v2

    if-lez v4, :cond_0

    .line 322
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->previousWord()V

    .line 323
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v4

    move v3, v4

    .line 324
    .local v3, "start":I
    move-object v4, v0

    move v5, v3

    move v6, v2

    const-string v7, ""

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->replaceText(IILjava/lang/String;)V

    .line 326
    .end local v3    # "start":I
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->textInputControl:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->textListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/StringProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 99
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->dispose()V

    .line 100
    return-void
.end method

.method protected fire(Ljavafx/scene/input/KeyEvent;)V
    .locals 0
    .param p1, "event"    # Ljavafx/scene/input/KeyEvent;

    .prologue
    .line 426
    .local p0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    return-void
.end method

.method protected forwardToParent(Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/KeyEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 431
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/Parent;->fireEvent(Ljavafx/event/Event;)V

    .line 433
    :cond_0
    return-void
.end method

.method public isEditing()Z
    .locals 2

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->editing:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    return v0
.end method

.method protected isMixed()Z
    .locals 3

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->mixed:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 266
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->getBidi()Ljava/text/Bidi;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/Bidi;->isMixed()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->mixed:Ljava/lang/Boolean;

    .line 268
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->mixed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    return v0
.end method

.method protected isRTLText()Z
    .locals 5

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->rtlText:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 273
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->getBidi()Ljava/text/Bidi;

    move-result-object v2

    move-object v1, v2

    .line 274
    .local v1, "bidi":Ljava/text/Bidi;
    move-object v2, v0

    move-object v3, v1

    .line 275
    invoke-virtual {v3}, Ljava/text/Bidi;->isRightToLeft()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    .line 276
    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->isMixed()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->textInputControl:Ljavafx/scene/control/TextInputControl;

    .line 277
    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v3, v4, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 275
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->rtlText:Ljava/lang/Boolean;

    .line 279
    .end local v1    # "bidi":Ljava/text/Bidi;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->rtlText:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    return v0

    .line 277
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    .restart local v1    # "bidi":Ljava/text/Bidi;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected nextWord()V
    .locals 3

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TextInputControl;

    move-object v1, v2

    .line 403
    .local v1, "textInputControl":Ljavafx/scene/control/TextInputControl;
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isLinux()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 404
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->endOfNextWord()V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->nextWord()V

    goto :goto_0
.end method

.method protected previousWord()V
    .locals 2

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->previousWord()V

    .line 399
    return-void
.end method

.method protected abstract replaceText(IILjava/lang/String;)V
.end method

.method protected scrollCharacterToVisible(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 114
    .local p0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    return-void
.end method

.method protected selectNextWord()V
    .locals 3

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TextInputControl;

    move-object v1, v2

    .line 364
    .local v1, "textInputControl":Ljavafx/scene/control/TextInputControl;
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isLinux()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->selectEndOfNextWord()V

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->selectNextWord()V

    goto :goto_0
.end method

.method protected selectPreviousWord()V
    .locals 2

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->selectPreviousWord()V

    .line 360
    return-void
.end method

.method protected selectWord()V
    .locals 3

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TextInputControl;

    move-object v1, v2

    .line 389
    .local v1, "textInputControl":Ljavafx/scene/control/TextInputControl;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->previousWord()V

    .line 390
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isWindows()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->selectNextWord()V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->selectEndOfNextWord()V

    goto :goto_0
.end method

.method protected abstract setCaretAnimating(Z)V
.end method

.method protected setEditing(Z)V
    .locals 4

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;, "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior<TT;>;"
    move v1, p1

    .local v1, "b":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->editing:Z

    .line 455
    return-void
.end method
