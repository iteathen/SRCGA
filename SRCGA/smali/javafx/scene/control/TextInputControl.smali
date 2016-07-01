.class public abstract Ljavafx/scene/control/TextInputControl;
.super Ljavafx/scene/control/Control;
.source "TextInputControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/TextInputControl$TextInputControlFromatterAccessor;,
        Ljavafx/scene/control/TextInputControl$StyleableProperties;,
        Ljavafx/scene/control/TextInputControl$UndoRedoChange;,
        Ljavafx/scene/control/TextInputControl$TextProperty;,
        Ljavafx/scene/control/TextInputControl$Content;
    }
.end annotation

.annotation runtime Ljavafx/beans/DefaultProperty;
    value = "text"
.end annotation


# static fields
.field private static final PSEUDO_CLASS_READONLY:Ljavafx/css/PseudoClass;


# instance fields
.field private accessor:Lcom/sun/javafx/scene/control/FormatterAccessor;

.field private anchor:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

.field private caretPosition:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

.field private charIterator:Ljava/text/BreakIterator;

.field private final content:Ljavafx/scene/control/TextInputControl$Content;

.field private createNewUndoRecord:Z

.field private editable:Ljavafx/beans/property/BooleanProperty;

.field private font:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation
.end field

.field private length:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

.field private promptText:Ljavafx/beans/property/StringProperty;

.field private final redoable:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

.field private selectedText:Ljavafx/beans/property/ReadOnlyStringWrapper;

.field private selection:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/IndexRange;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljavafx/scene/control/TextInputControl$TextProperty;

.field private final textFormatter:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TextFormatter",
            "<*>;>;"
        }
    .end annotation
.end field

.field private undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

.field private undoChangeHead:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

.field private final undoable:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

.field private wordIterator:Ljava/text/BreakIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1505
    const-string v0, "readonly"

    .line 1506
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TextInputControl;->PSEUDO_CLASS_READONLY:Ljavafx/css/PseudoClass;

    .line 1505
    return-void
.end method

.method protected constructor <init>(Ljavafx/scene/control/TextInputControl$Content;)V
    .locals 12

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, p1

    .local v1, "content":Ljavafx/scene/control/TextInputControl$Content;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Control;-><init>()V

    .line 269
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TextInputControl$4;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    move-object v6, v0

    const-string v7, "promptText"

    const-string v8, ""

    invoke-direct {v4, v5, v6, v7, v8}, Ljavafx/scene/control/TextInputControl$4;-><init>(Ljavafx/scene/control/TextInputControl;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl;->promptText:Ljavafx/beans/property/StringProperty;

    .line 291
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TextInputControl$5;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/TextInputControl$5;-><init>(Ljavafx/scene/control/TextInputControl;)V

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl;->textFormatter:Ljavafx/beans/property/ObjectProperty;

    .line 347
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TextInputControl$TextProperty;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TextInputControl$TextProperty;-><init>(Ljavafx/scene/control/TextInputControl;Ljavafx/scene/control/TextInputControl$1;)V

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl;->text:Ljavafx/scene/control/TextInputControl$TextProperty;

    .line 355
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    const-string v6, "length"

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl;->length:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    .line 362
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TextInputControl$6;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    move-object v6, v0

    const-string v7, "editable"

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Ljavafx/scene/control/TextInputControl$6;-><init>(Ljavafx/scene/control/TextInputControl;Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl;->editable:Ljavafx/beans/property/BooleanProperty;

    .line 374
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    const-string v6, "selection"

    new-instance v7, Ljavafx/scene/control/IndexRange;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ljavafx/scene/control/IndexRange;-><init>(II)V

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl;->selection:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 381
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/ReadOnlyStringWrapper;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    const-string v6, "selectedText"

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/ReadOnlyStringWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl;->selectedText:Ljavafx/beans/property/ReadOnlyStringWrapper;

    .line 393
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    const-string v6, "anchor"

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl;->anchor:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    .line 405
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    const-string v6, "caretPosition"

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl;->caretPosition:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    .line 409
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    invoke-direct {v4}, Ljavafx/scene/control/TextInputControl$UndoRedoChange;-><init>()V

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl;->undoChangeHead:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    .line 410
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputControl;->undoChangeHead:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    .line 411
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/control/TextInputControl;->createNewUndoRecord:Z

    .line 418
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    const-string v6, "undoable"

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl;->undoable:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 428
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    const-string v6, "redoable"

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl;->redoable:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 131
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl;->content:Ljavafx/scene/control/TextInputControl$Content;

    .line 135
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Ljavafx/scene/control/TextInputControl$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TextInputControl;Ljavafx/scene/control/TextInputControl$Content;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/scene/control/TextInputControl$Content;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 143
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl;->length:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    new-instance v3, Ljavafx/scene/control/TextInputControl$1;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/TextInputControl$1;-><init>(Ljavafx/scene/control/TextInputControl;)V

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 152
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl;->selectedText:Ljavafx/beans/property/ReadOnlyStringWrapper;

    new-instance v3, Ljavafx/scene/control/TextInputControl$2;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/TextInputControl$2;-><init>(Ljavafx/scene/control/TextInputControl;)V

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyStringWrapper;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 168
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/TextInputControl$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/TextInputControl;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 179
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "text-input"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 180
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/TextInputControl;)Ljavafx/scene/control/TextInputControl$TextProperty;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->text:Ljavafx/scene/control/TextInputControl$TextProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/control/TextInputControl;)Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->selection:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method static synthetic access$1000(Ljavafx/scene/control/TextInputControl;)V
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TextInputControl;->resetUndoRedoState()V

    return-void
.end method

.method static synthetic access$1300(Ljavafx/scene/control/TextInputControl;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->font:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/control/TextInputControl;Ljavafx/scene/control/TextFormatter;)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextInputControl;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/TextFormatter;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TextInputControl;->updateText(Ljavafx/scene/control/TextFormatter;)V

    return-void
.end method

.method static synthetic access$500()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Ljavafx/scene/control/TextInputControl;->PSEUDO_CLASS_READONLY:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$700(Ljavafx/scene/control/TextInputControl;)Ljavafx/scene/control/TextInputControl$Content;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->content:Ljavafx/scene/control/TextInputControl$Content;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method static synthetic access$900(Ljavafx/scene/control/TextInputControl;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextInputControl;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TextInputControl;->filterAndSet(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/TextInputControl;
    return v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TextInputControl;Ljavafx/scene/control/TextInputControl$Content;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TextInputControl;->lambda$new$162(Ljavafx/scene/control/TextInputControl$Content;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/TextInputControl;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TextInputControl;->lambda$new$163(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static containsInvalidCharacters(Ljava/lang/String;ZZ)Z
    .locals 8

    .prologue
    .line 1280
    move-object v0, p0

    .local v0, "txt":Ljava/lang/String;
    move v1, p1

    .local v1, "newlineIllegal":Z
    move v2, p2

    .local v2, "tabIllegal":Z
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1281
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    .line 1282
    .local v4, "c":C
    move v5, v4

    move v6, v1

    move v7, v2

    invoke-static {v5, v6, v7}, Ljavafx/scene/control/TextInputControl;->isInvalidCharacter(CZZ)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move v0, v5

    .line 1284
    .end local v0    # "txt":Ljava/lang/String;
    .end local v4    # "c":C
    :goto_1
    return v0

    .line 1280
    .restart local v0    # "txt":Ljava/lang/String;
    .restart local v4    # "c":C
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1284
    .end local v4    # "c":C
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method private doSelectRange(II)V
    .locals 7

    .prologue
    .line 1032
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move v1, p1

    .local v1, "anchor":I
    move v2, p2

    .local v2, "caretPosition":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputControl;->caretPosition:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    const/4 v4, 0x0

    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->set(I)V

    .line 1033
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputControl;->anchor:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    const/4 v4, 0x0

    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->set(I)V

    .line 1034
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputControl;->selection:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->getAnchor()I

    move-result v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v5

    invoke-static {v4, v5}, Ljavafx/scene/control/IndexRange;->normalize(II)Ljavafx/scene/control/IndexRange;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 1035
    move-object v3, v0

    sget-object v4, Ljavafx/scene/AccessibleAttribute;->SELECTION_START:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TextInputControl;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 1036
    return-void
.end method

.method private endOfNextWord(Z)V
    .locals 12

    .prologue
    .line 791
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move v1, p1

    .local v1, "select":Z
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v7

    move v2, v7

    .line 792
    .local v2, "textLength":I
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->getText()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 793
    .local v3, "text":Ljava/lang/String;
    move v7, v2

    if-gtz v7, :cond_0

    .line 794
    .line 827
    :goto_0
    return-void

    .line 797
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TextInputControl;->wordIterator:Ljava/text/BreakIterator;

    if-nez v7, :cond_1

    .line 798
    move-object v7, v0

    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v8

    iput-object v8, v7, Ljavafx/scene/control/TextInputControl;->wordIterator:Ljava/text/BreakIterator;

    .line 800
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TextInputControl;->wordIterator:Ljava/text/BreakIterator;

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 802
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TextInputControl;->wordIterator:Ljava/text/BreakIterator;

    const/4 v8, 0x0

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v9

    move v10, v2

    invoke-static {v8, v9, v10}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/text/BreakIterator;->following(I)I

    move-result v7

    move v4, v7

    .line 803
    .local v4, "last":I
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TextInputControl;->wordIterator:Ljava/text/BreakIterator;

    invoke-virtual {v7}, Ljava/text/BreakIterator;->next()I

    move-result v7

    move v5, v7

    .line 806
    .local v5, "current":I
    :goto_1
    move v7, v5

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 807
    move v7, v4

    move v6, v7

    .local v6, "p":I
    :goto_2
    move v7, v6

    move v8, v5

    if-gt v7, v8, :cond_4

    .line 808
    move-object v7, v3

    const/4 v8, 0x0

    move v9, v6

    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-static {v8, v9, v10}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-nez v7, :cond_3

    .line 809
    move v7, v1

    if-eqz v7, :cond_2

    .line 810
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TextInputControl;->getAnchor()I

    move-result v8

    move v9, v6

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    .line 814
    :goto_3
    goto :goto_0

    .line 812
    :cond_2
    move-object v7, v0

    move v8, v6

    move v9, v6

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    goto :goto_3

    .line 807
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 817
    :cond_4
    move v7, v5

    move v4, v7

    .line 818
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TextInputControl;->wordIterator:Ljava/text/BreakIterator;

    invoke-virtual {v7}, Ljava/text/BreakIterator;->next()I

    move-result v7

    move v5, v7

    goto :goto_1

    .line 822
    .end local v6    # "p":I
    :cond_5
    move v7, v1

    if-eqz v7, :cond_6

    .line 823
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TextInputControl;->getAnchor()I

    move-result v8

    move v9, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    .line 827
    :goto_4
    goto :goto_0

    .line 825
    :cond_6
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->end()V

    goto :goto_4
.end method

.method private filterAndSet(Ljava/lang/String;)Z
    .locals 15

    .prologue
    .line 1160
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object/from16 v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getTextFormatter()Ljavafx/scene/control/TextFormatter;

    move-result-object v5

    move-object v2, v5

    .line 1161
    .local v2, "formatter":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<*>;"
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TextInputControl;->content:Ljavafx/scene/control/TextInputControl$Content;

    invoke-interface {v5}, Ljavafx/scene/control/TextInputControl$Content;->length()I

    move-result v5

    move v3, v5

    .line 1162
    .local v3, "length":I
    move-object v5, v2

    if-eqz v5, :cond_1

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TextFormatter;->getFilter()Ljava/util/function/UnaryOperator;

    move-result-object v5

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TextInputControl;->text:Ljavafx/scene/control/TextInputControl$TextProperty;

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl$TextProperty;->isBound()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1163
    new-instance v5, Ljavafx/scene/control/TextFormatter$Change;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    move-object v7, v0

    move-object v8, v0

    .line 1164
    invoke-direct {v8}, Ljavafx/scene/control/TextInputControl;->getFormatterAccessor()Lcom/sun/javafx/scene/control/FormatterAccessor;

    move-result-object v8

    const/4 v9, 0x0

    move v10, v3

    move-object v11, v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Ljavafx/scene/control/TextFormatter$Change;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/FormatterAccessor;IILjava/lang/String;II)V

    move-object v4, v5

    .line 1165
    .local v4, "change":Ljavafx/scene/control/TextFormatter$Change;
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TextFormatter;->getFilter()Ljava/util/function/UnaryOperator;

    move-result-object v5

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TextFormatter$Change;

    move-object v4, v5

    .line 1166
    move-object v5, v4

    if-nez v5, :cond_0

    .line 1167
    const/4 v5, 0x0

    move v0, v5

    .line 1173
    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    .end local v4    # "change":Ljavafx/scene/control/TextFormatter$Change;
    :goto_0
    return v0

    .line 1169
    .restart local v0    # "this":Ljavafx/scene/control/TextInputControl;
    .restart local v4    # "change":Ljavafx/scene/control/TextFormatter$Change;
    :cond_0
    move-object v5, v0

    move-object v6, v4

    iget v6, v6, Ljavafx/scene/control/TextFormatter$Change;->start:I

    move-object v7, v4

    iget v7, v7, Ljavafx/scene/control/TextFormatter$Change;->end:I

    move-object v8, v4

    iget-object v8, v8, Ljavafx/scene/control/TextFormatter$Change;->text:Ljava/lang/String;

    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/control/TextFormatter$Change;->getAnchor()I

    move-result v9

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/control/TextFormatter$Change;->getCaretPosition()I

    move-result v10

    invoke-direct/range {v5 .. v10}, Ljavafx/scene/control/TextInputControl;->replaceText(IILjava/lang/String;II)I

    move-result v5

    .line 1170
    .line 1173
    .end local v4    # "change":Ljavafx/scene/control/TextFormatter$Change;
    :goto_1
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 1171
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    move v7, v3

    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Ljavafx/scene/control/TextInputControl;->replaceText(IILjava/lang/String;II)I

    move-result v5

    goto :goto_1
.end method

.method static filterInput(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 10

    .prologue
    .line 1266
    move-object v0, p0

    .local v0, "txt":Ljava/lang/String;
    move v1, p1

    .local v1, "stripNewlines":Z
    move v2, p2

    .local v2, "stripTabs":Z
    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-static {v6, v7, v8}, Ljavafx/scene/control/TextInputControl;->containsInvalidCharacters(Ljava/lang/String;ZZ)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1267
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v6

    .line 1268
    .local v3, "s":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 1269
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    .line 1270
    .local v5, "c":C
    move v6, v5

    move v7, v1

    move v8, v2

    invoke-static {v6, v7, v8}, Ljavafx/scene/control/TextInputControl;->isInvalidCharacter(CZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1271
    move-object v6, v3

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1268
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1274
    .end local v5    # "c":C
    :cond_1
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1276
    .end local v3    # "s":Ljava/lang/StringBuilder;
    .end local v4    # "i":I
    :cond_2
    move-object v6, v0

    move-object v0, v6

    .end local v0    # "txt":Ljava/lang/String;
    return-object v0
.end method

.method public static getClassCssMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 1541
    # getter for: Ljavafx/scene/control/TextInputControl$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/control/TextInputControl$StyleableProperties;->access$1400()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getFormatterAccessor()Lcom/sun/javafx/scene/control/FormatterAccessor;
    .locals 7

    .prologue
    .line 1245
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->accessor:Lcom/sun/javafx/scene/control/FormatterAccessor;

    if-nez v1, :cond_0

    .line 1246
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TextInputControl$TextInputControlFromatterAccessor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TextInputControl$TextInputControlFromatterAccessor;-><init>(Ljavafx/scene/control/TextInputControl;Ljavafx/scene/control/TextInputControl$1;)V

    iput-object v2, v1, Ljavafx/scene/control/TextInputControl;->accessor:Lcom/sun/javafx/scene/control/FormatterAccessor;

    .line 1248
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->accessor:Lcom/sun/javafx/scene/control/FormatterAccessor;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method private static isInvalidCharacter(CZZ)Z
    .locals 5

    .prologue
    .line 1288
    move v0, p0

    .local v0, "c":C
    move v1, p1

    .local v1, "newlineIllegal":Z
    move v2, p2

    .local v2, "tabIllegal":Z
    move v3, v0

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 1292
    .end local v0    # "c":C
    :goto_0
    return v0

    .line 1289
    .restart local v0    # "c":C
    :cond_0
    move v3, v0

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    move v3, v1

    move v0, v3

    goto :goto_0

    .line 1290
    :cond_1
    move v3, v0

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    move v3, v2

    move v0, v3

    goto :goto_0

    .line 1291
    :cond_2
    move v3, v0

    const/16 v4, 0x20

    if-ge v3, v4, :cond_3

    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 1292
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private synthetic lambda$new$162(Ljavafx/scene/control/TextInputControl$Content;Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, p1

    .local v1, "content":Ljavafx/scene/control/TextInputControl$Content;
    move-object v2, p2

    .local v2, "observable":Ljavafx/beans/Observable;
    move-object v3, v1

    invoke-interface {v3}, Ljavafx/scene/control/TextInputControl$Content;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 137
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputControl;->text:Ljavafx/scene/control/TextInputControl$TextProperty;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljavafx/scene/control/TextInputControl$TextProperty;->access$1502(Ljavafx/scene/control/TextInputControl$TextProperty;Z)Z

    move-result v3

    .line 139
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputControl;->text:Ljavafx/scene/control/TextInputControl$TextProperty;

    invoke-static {v3}, Ljavafx/scene/control/TextInputControl$TextProperty;->access$1600(Ljavafx/scene/control/TextInputControl$TextProperty;)V

    .line 140
    return-void
.end method

.method private synthetic lambda$new$163(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, p1

    .local v1, "ob":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "o":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "n":Ljava/lang/Boolean;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->getTextFormatter()Ljavafx/scene/control/TextFormatter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 171
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getTextFormatter()Ljavafx/scene/control/TextFormatter;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavafx/scene/control/TextInputControl;->updateText(Ljavafx/scene/control/TextFormatter;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->commitValue()V

    goto :goto_0
.end method

.method private nextWord(Z)V
    .locals 13

    .prologue
    .line 748
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move v1, p1

    .local v1, "select":Z
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v8

    move v2, v8

    .line 749
    .local v2, "textLength":I
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TextInputControl;->getText()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 750
    .local v3, "text":Ljava/lang/String;
    move v8, v2

    if-gtz v8, :cond_0

    .line 751
    .line 788
    :goto_0
    return-void

    .line 754
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TextInputControl;->wordIterator:Ljava/text/BreakIterator;

    if-nez v8, :cond_1

    .line 755
    move-object v8, v0

    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v9

    iput-object v9, v8, Ljavafx/scene/control/TextInputControl;->wordIterator:Ljava/text/BreakIterator;

    .line 757
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TextInputControl;->wordIterator:Ljava/text/BreakIterator;

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 759
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TextInputControl;->wordIterator:Ljava/text/BreakIterator;

    const/4 v9, 0x0

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v10

    move v11, v2

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-static {v9, v10, v11}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/text/BreakIterator;->following(I)I

    move-result v8

    move v4, v8

    .line 760
    .local v4, "last":I
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TextInputControl;->wordIterator:Ljava/text/BreakIterator;

    invoke-virtual {v8}, Ljava/text/BreakIterator;->next()I

    move-result v8

    move v5, v8

    .line 764
    .local v5, "current":I
    :goto_1
    move v8, v5

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 765
    move v8, v4

    move v6, v8

    .local v6, "p":I
    :goto_2
    move v8, v6

    move v9, v5

    if-gt v8, v9, :cond_4

    .line 766
    move-object v8, v3

    const/4 v9, 0x0

    move v10, v6

    move v11, v2

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-static {v9, v10, v11}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v7, v8

    .line 769
    .local v7, "ch":C
    move v8, v7

    const/16 v9, 0x20

    if-eq v8, v9, :cond_3

    move v8, v7

    const/16 v9, 0x9

    if-eq v8, v9, :cond_3

    .line 770
    move v8, v1

    if-eqz v8, :cond_2

    .line 771
    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TextInputControl;->getAnchor()I

    move-result v9

    move v10, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    .line 775
    :goto_3
    goto :goto_0

    .line 773
    :cond_2
    move-object v8, v0

    move v9, v6

    move v10, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    goto :goto_3

    .line 765
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 778
    .end local v7    # "ch":C
    :cond_4
    move v8, v5

    move v4, v8

    .line 779
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TextInputControl;->wordIterator:Ljava/text/BreakIterator;

    invoke-virtual {v8}, Ljava/text/BreakIterator;->next()I

    move-result v8

    move v5, v8

    goto :goto_1

    .line 783
    .end local v6    # "p":I
    :cond_5
    move v8, v1

    if-eqz v8, :cond_6

    .line 784
    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TextInputControl;->getAnchor()I

    move-result v9

    move v10, v2

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    .line 788
    :goto_4
    goto/16 :goto_0

    .line 786
    :cond_6
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TextInputControl;->end()V

    goto :goto_4
.end method

.method private previousWord(Z)V
    .locals 10

    .prologue
    .line 724
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move v1, p1

    .local v1, "select":Z
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v5

    move v2, v5

    .line 725
    .local v2, "textLength":I
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getText()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 726
    .local v3, "text":Ljava/lang/String;
    move v5, v2

    if-gtz v5, :cond_0

    .line 727
    .line 745
    :goto_0
    return-void

    .line 730
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TextInputControl;->wordIterator:Ljava/text/BreakIterator;

    if-nez v5, :cond_1

    .line 731
    move-object v5, v0

    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v6

    iput-object v6, v5, Ljavafx/scene/control/TextInputControl;->wordIterator:Ljava/text/BreakIterator;

    .line 733
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TextInputControl;->wordIterator:Ljava/text/BreakIterator;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 735
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TextInputControl;->wordIterator:Ljava/text/BreakIterator;

    const/4 v6, 0x0

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v7

    move v8, v2

    invoke-static {v6, v7, v8}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v5

    move v4, v5

    .line 738
    .local v4, "pos":I
    :goto_1
    move v5, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    move-object v5, v3

    const/4 v6, 0x0

    move v7, v4

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    .line 739
    invoke-static {v6, v7, v8}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 740
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TextInputControl;->wordIterator:Ljava/text/BreakIterator;

    const/4 v6, 0x0

    move v7, v4

    move v8, v2

    invoke-static {v6, v7, v8}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v5

    move v4, v5

    goto :goto_1

    .line 744
    :cond_2
    move-object v5, v0

    move v6, v1

    if-eqz v6, :cond_3

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TextInputControl;->getAnchor()I

    move-result v6

    :goto_2
    move v7, v4

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    .line 745
    goto :goto_0

    .line 744
    :cond_3
    move v6, v4

    goto :goto_2
.end method

.method private replaceText(IILjava/lang/String;II)I
    .locals 12

    .prologue
    .line 1197
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v3, p3

    .local v3, "value":Ljava/lang/String;
    move/from16 v4, p4

    .local v4, "anchor":I
    move/from16 v5, p5

    .local v5, "caretPosition":I
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v8

    move v6, v8

    .line 1198
    .local v6, "length":I
    const/4 v8, 0x0

    move v7, v8

    .line 1199
    .local v7, "adjustmentAmount":I
    move v8, v2

    move v9, v1

    if-eq v8, v9, :cond_0

    .line 1200
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TextInputControl;->getContent()Ljavafx/scene/control/TextInputControl$Content;

    move-result-object v8

    move v9, v1

    move v10, v2

    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    invoke-interface {v8, v9, v10, v11}, Ljavafx/scene/control/TextInputControl$Content;->delete(IIZ)V

    .line 1201
    move v8, v6

    move v9, v2

    move v10, v1

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    move v6, v8

    .line 1203
    :cond_0
    move-object v8, v3

    if-eqz v8, :cond_1

    .line 1204
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TextInputControl;->getContent()Ljavafx/scene/control/TextInputControl$Content;

    move-result-object v8

    move v9, v1

    move-object v10, v3

    const/4 v11, 0x1

    invoke-interface {v8, v9, v10, v11}, Ljavafx/scene/control/TextInputControl$Content;->insert(ILjava/lang/String;Z)V

    .line 1205
    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v9

    move v10, v6

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    move v7, v8

    .line 1206
    move v8, v4

    move v9, v7

    sub-int/2addr v8, v9

    move v4, v8

    .line 1207
    move v8, v5

    move v9, v7

    sub-int/2addr v8, v9

    move v5, v8

    .line 1209
    :cond_1
    move-object v8, v0

    move v9, v4

    move v10, v5

    invoke-direct {v8, v9, v10}, Ljavafx/scene/control/TextInputControl;->doSelectRange(II)V

    .line 1210
    move v8, v7

    move v0, v8

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return v0
.end method

.method private resetUndoRedoState()V
    .locals 3

    .prologue
    .line 1148
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl;->undoChangeHead:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    iput-object v2, v1, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    .line 1149
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->next:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    .line 1150
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TextInputControl;->updateUndoRedoState()V

    .line 1151
    return-void
.end method

.method private updateContent(Ljavafx/scene/control/TextFormatter$Change;Z)V
    .locals 16

    .prologue
    .line 554
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object/from16 v1, p1

    .local v1, "change":Ljavafx/scene/control/TextFormatter$Change;
    move/from16 v2, p2

    .local v2, "forceNewUndoRecord":Z
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/TextInputControl;->getSelection()Ljavafx/scene/control/IndexRange;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/control/IndexRange;->getLength()I

    move-result v8

    if-lez v8, :cond_3

    const/4 v8, 0x1

    :goto_0
    move v3, v8

    .line 555
    .local v3, "nonEmptySelection":Z
    move-object v8, v0

    move-object v9, v1

    iget v9, v9, Ljavafx/scene/control/TextFormatter$Change;->start:I

    move-object v10, v1

    iget v10, v10, Ljavafx/scene/control/TextFormatter$Change;->end:I

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TextInputControl;->getText(II)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 556
    .local v4, "oldText":Ljava/lang/String;
    move-object v8, v0

    move-object v9, v1

    iget v9, v9, Ljavafx/scene/control/TextFormatter$Change;->start:I

    move-object v10, v1

    iget v10, v10, Ljavafx/scene/control/TextFormatter$Change;->end:I

    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/control/TextFormatter$Change;->text:Ljava/lang/String;

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/control/TextFormatter$Change;->getAnchor()I

    move-result v12

    move-object v13, v1

    invoke-virtual {v13}, Ljavafx/scene/control/TextFormatter$Change;->getCaretPosition()I

    move-result v13

    invoke-direct/range {v8 .. v13}, Ljavafx/scene/control/TextInputControl;->replaceText(IILjava/lang/String;II)I

    move-result v8

    move v5, v8

    .line 563
    .local v5, "adjustmentAmount":I
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/TextInputControl;->undoChangeHead:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    if-ne v8, v9, :cond_4

    const/4 v8, -0x1

    :goto_1
    move v6, v8

    .line 564
    .local v6, "endOfUndoChange":I
    move-object v8, v0

    move-object v9, v1

    iget v9, v9, Ljavafx/scene/control/TextFormatter$Change;->start:I

    move-object v10, v1

    iget v10, v10, Ljavafx/scene/control/TextFormatter$Change;->start:I

    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/control/TextFormatter$Change;->text:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    move v11, v5

    sub-int/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TextInputControl;->getText(II)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 565
    .local v7, "newText":Ljava/lang/String;
    move-object v8, v0

    iget-boolean v8, v8, Ljavafx/scene/control/TextInputControl;->createNewUndoRecord:Z

    if-nez v8, :cond_1

    move v8, v3

    if-nez v8, :cond_1

    move v8, v6

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    move v8, v2

    if-nez v8, :cond_1

    move v8, v6

    move-object v9, v1

    iget v9, v9, Ljavafx/scene/control/TextFormatter$Change;->start:I

    if-eq v8, v9, :cond_0

    move v8, v6

    move-object v9, v1

    iget v9, v9, Ljavafx/scene/control/TextFormatter$Change;->end:I

    if-ne v8, v9, :cond_1

    :cond_0
    move-object v8, v1

    iget v8, v8, Ljavafx/scene/control/TextFormatter$Change;->start:I

    move-object v9, v1

    iget v9, v9, Ljavafx/scene/control/TextFormatter$Change;->end:I

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    if-le v8, v9, :cond_5

    .line 567
    :cond_1
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    move-object v10, v1

    iget v10, v10, Ljavafx/scene/control/TextFormatter$Change;->start:I

    move-object v11, v4

    move-object v12, v7

    invoke-virtual {v9, v10, v11, v12}, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->add(ILjava/lang/String;Ljava/lang/String;)Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    move-result-object v9

    iput-object v9, v8, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    .line 588
    :cond_2
    :goto_2
    move-object v8, v0

    invoke-direct {v8}, Ljavafx/scene/control/TextInputControl;->updateUndoRedoState()V

    .line 589
    return-void

    .line 554
    .end local v3    # "nonEmptySelection":Z
    .end local v4    # "oldText":Ljava/lang/String;
    .end local v5    # "adjustmentAmount":I
    .end local v6    # "endOfUndoChange":I
    .end local v7    # "newText":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 563
    .restart local v3    # "nonEmptySelection":Z
    .restart local v4    # "oldText":Ljava/lang/String;
    .restart local v5    # "adjustmentAmount":I
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    iget v8, v8, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->start:I

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    iget-object v9, v9, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->newText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_1

    .line 568
    .restart local v6    # "endOfUndoChange":I
    .restart local v7    # "newText":Ljava/lang/String;
    :cond_5
    move-object v8, v1

    iget v8, v8, Ljavafx/scene/control/TextFormatter$Change;->start:I

    move-object v9, v1

    iget v9, v9, Ljavafx/scene/control/TextFormatter$Change;->end:I

    if-eq v8, v9, :cond_8

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/control/TextFormatter$Change;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 570
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    iget-object v8, v8, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->newText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 571
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    iget-object v9, v9, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->newText:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v11, v1

    iget v11, v11, Ljavafx/scene/control/TextFormatter$Change;->start:I

    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    iget v12, v12, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->start:I

    sub-int/2addr v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->newText:Ljava/lang/String;

    .line 572
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    iget-object v8, v8, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->newText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 574
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    invoke-virtual {v9}, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->discard()Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    move-result-object v9

    iput-object v9, v8, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    goto :goto_2

    .line 577
    :cond_6
    move-object v8, v1

    iget v8, v8, Ljavafx/scene/control/TextFormatter$Change;->start:I

    move v9, v6

    if-ne v8, v9, :cond_7

    .line 578
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    iget-object v10, v10, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->oldText:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->oldText:Ljava/lang/String;

    goto/16 :goto_2

    .line 580
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    iget-object v10, v10, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->oldText:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->oldText:Ljava/lang/String;

    .line 581
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->start:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->start:I

    goto/16 :goto_2

    .line 586
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    iget-object v10, v10, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->newText:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->newText:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private updateText(Ljavafx/scene/control/TextFormatter;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/TextFormatter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1214
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, p1

    .local v1, "formatter":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<TT;>;"
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TextFormatter;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 1215
    .local v2, "value":Ljava/lang/Object;, "TT;"
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TextFormatter;->getValueConverter()Ljavafx/util/StringConverter;

    move-result-object v5

    move-object v3, v5

    .line 1216
    .local v3, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 1217
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljavafx/util/StringConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1218
    .local v4, "text":Ljava/lang/String;
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v7

    move-object v8, v4

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct/range {v5 .. v10}, Ljavafx/scene/control/TextInputControl;->replaceText(IILjava/lang/String;II)I

    move-result v5

    .line 1220
    .end local v4    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateUndoRedoState()V
    .locals 4

    .prologue
    .line 1154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->undoable:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputControl;->undoChangeHead:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 1155
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->redoable:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->next:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 1156
    return-void

    .line 1154
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1155
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final anchorProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 2

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->anchor:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method public appendText(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TextInputControl;->insertText(ILjava/lang/String;)V

    .line 464
    return-void
.end method

.method public backward()V
    .locals 8

    .prologue
    .line 976
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v5

    move v1, v5

    .line 977
    .local v1, "textLength":I
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v5

    move v2, v5

    .line 978
    .local v2, "dot":I
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getAnchor()I

    move-result v5

    move v3, v5

    .line 979
    .local v3, "mark":I
    move v5, v2

    move v6, v3

    if-eq v5, v6, :cond_1

    .line 980
    move v5, v2

    move v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v4, v5

    .line 981
    .local v4, "pos":I
    move-object v5, v0

    move v6, v4

    move v7, v4

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    .line 982
    .line 990
    .end local v4    # "pos":I
    :cond_0
    :goto_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->deselect()V

    .line 991
    return-void

    .line 982
    :cond_1
    move v5, v2

    if-lez v5, :cond_0

    move v5, v1

    if-lez v5, :cond_0

    .line 983
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TextInputControl;->charIterator:Ljava/text/BreakIterator;

    if-nez v5, :cond_2

    .line 984
    move-object v5, v0

    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v6

    iput-object v6, v5, Ljavafx/scene/control/TextInputControl;->charIterator:Ljava/text/BreakIterator;

    .line 986
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TextInputControl;->charIterator:Ljava/text/BreakIterator;

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TextInputControl;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 987
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TextInputControl;->charIterator:Ljava/text/BreakIterator;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v5

    move v4, v5

    .line 988
    .restart local v4    # "pos":I
    move-object v5, v0

    move v6, v4

    move v7, v4

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    goto :goto_0
.end method

.method public final cancelEdit()V
    .locals 3

    .prologue
    .line 1237
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->getTextFormatter()Ljavafx/scene/control/TextFormatter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1238
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->getTextFormatter()Ljavafx/scene/control/TextFormatter;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/control/TextInputControl;->updateText(Ljavafx/scene/control/TextFormatter;)V

    .line 1240
    :cond_0
    return-void
.end method

.method public final caretPositionProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 2

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->caretPosition:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 1062
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->deselect()V

    .line 1063
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->text:Ljavafx/scene/control/TextInputControl$TextProperty;

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl$TextProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1064
    move-object v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TextInputControl;->setText(Ljava/lang/String;)V

    .line 1066
    :cond_0
    return-void
.end method

.method public final commitValue()V
    .locals 3

    .prologue
    .line 1227
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->getTextFormatter()Ljavafx/scene/control/TextFormatter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1228
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->getTextFormatter()Ljavafx/scene/control/TextFormatter;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TextFormatter;->updateValue(Ljava/lang/String;)V

    .line 1230
    :cond_0
    return-void
.end method

.method public copy()V
    .locals 6

    .prologue
    .line 606
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 607
    .local v1, "selectedText":Ljava/lang/String;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 608
    new-instance v3, Ljavafx/scene/input/ClipboardContent;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljavafx/scene/input/ClipboardContent;-><init>()V

    move-object v2, v3

    .line 609
    .local v2, "content":Ljavafx/scene/input/ClipboardContent;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/input/ClipboardContent;->putString(Ljava/lang/String;)Z

    move-result v3

    .line 610
    invoke-static {}, Ljavafx/scene/input/Clipboard;->getSystemClipboard()Ljavafx/scene/input/Clipboard;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/input/Clipboard;->setContent(Ljava/util/Map;)Z

    move-result v3

    .line 612
    .end local v2    # "content":Ljavafx/scene/input/ClipboardContent;
    :cond_0
    return-void
.end method

.method public cut()V
    .locals 5

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->copy()V

    .line 597
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->getSelection()Ljavafx/scene/control/IndexRange;

    move-result-object v2

    move-object v1, v2

    .line 598
    .local v1, "selection":Ljavafx/scene/control/IndexRange;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/IndexRange;->getStart()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/IndexRange;->getEnd()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TextInputControl;->deleteText(II)V

    .line 599
    return-void
.end method

.method public deleteNextChar()Z
    .locals 10

    .prologue
    .line 912
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    const/4 v7, 0x1

    move v1, v7

    .line 913
    .local v1, "failed":Z
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->isEditable()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->isDisabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 914
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v7

    move v2, v7

    .line 915
    .local v2, "textLength":I
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->getText()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 916
    .local v3, "text":Ljava/lang/String;
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v7

    move v4, v7

    .line 917
    .local v4, "dot":I
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->getAnchor()I

    move-result v7

    move v5, v7

    .line 918
    .local v5, "mark":I
    move v7, v4

    move v8, v5

    if-eq v7, v8, :cond_1

    .line 920
    move-object v7, v0

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TextInputControl;->replaceSelection(Ljava/lang/String;)V

    .line 921
    const/4 v7, 0x0

    move v1, v7

    .line 936
    .end local v2    # "textLength":I
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "dot":I
    .end local v5    # "mark":I
    :cond_0
    :goto_0
    move v7, v1

    if-nez v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    move v0, v7

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return v0

    .line 922
    .restart local v0    # "this":Ljavafx/scene/control/TextInputControl;
    .restart local v2    # "textLength":I
    .restart local v3    # "text":Ljava/lang/String;
    .restart local v4    # "dot":I
    .restart local v5    # "mark":I
    :cond_1
    move v7, v2

    if-lez v7, :cond_0

    move v7, v4

    move v8, v2

    if-ge v7, v8, :cond_0

    .line 927
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TextInputControl;->charIterator:Ljava/text/BreakIterator;

    if-nez v7, :cond_2

    .line 928
    move-object v7, v0

    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v8

    iput-object v8, v7, Ljavafx/scene/control/TextInputControl;->charIterator:Ljava/text/BreakIterator;

    .line 930
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TextInputControl;->charIterator:Ljava/text/BreakIterator;

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 931
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TextInputControl;->charIterator:Ljava/text/BreakIterator;

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/text/BreakIterator;->following(I)I

    move-result v7

    move v6, v7

    .line 932
    .local v6, "p":I
    move-object v7, v0

    move v8, v4

    move v9, v6

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/TextInputControl;->deleteText(II)V

    .line 933
    const/4 v7, 0x0

    move v1, v7

    goto :goto_0

    .line 936
    .end local v2    # "textLength":I
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "dot":I
    .end local v5    # "mark":I
    .end local v6    # "p":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public deletePreviousChar()Z
    .locals 9

    .prologue
    .line 882
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    const/4 v6, 0x1

    move v1, v6

    .line 883
    .local v1, "failed":Z
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TextInputControl;->isEditable()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TextInputControl;->isDisabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 884
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TextInputControl;->getText()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 885
    .local v2, "text":Ljava/lang/String;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v6

    move v3, v6

    .line 886
    .local v3, "dot":I
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TextInputControl;->getAnchor()I

    move-result v6

    move v4, v6

    .line 887
    .local v4, "mark":I
    move v6, v3

    move v7, v4

    if-eq v6, v7, :cond_1

    .line 889
    move-object v6, v0

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljavafx/scene/control/TextInputControl;->replaceSelection(Ljava/lang/String;)V

    .line 890
    const/4 v6, 0x0

    move v1, v6

    .line 903
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "dot":I
    .end local v4    # "mark":I
    :cond_0
    :goto_0
    move v6, v1

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v0, v6

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return v0

    .line 891
    .restart local v0    # "this":Ljavafx/scene/control/TextInputControl;
    .restart local v2    # "text":Ljava/lang/String;
    .restart local v3    # "dot":I
    .restart local v4    # "mark":I
    :cond_1
    move v6, v3

    if-lez v6, :cond_0

    .line 898
    move-object v6, v2

    move v7, v3

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v6

    move v5, v6

    .line 899
    .local v5, "p":I
    move-object v6, v0

    move v7, v5

    move v8, v3

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/TextInputControl;->deleteText(II)V

    .line 900
    const/4 v6, 0x0

    move v1, v6

    goto :goto_0

    .line 903
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "dot":I
    .end local v4    # "mark":I
    .end local v5    # "p":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public deleteText(II)V
    .locals 7

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    const-string v6, ""

    invoke-virtual {v3, v4, v5, v6}, Ljavafx/scene/control/TextInputControl;->replaceText(IILjava/lang/String;)V

    .line 497
    return-void
.end method

.method public deleteText(Ljavafx/scene/control/IndexRange;)V
    .locals 5

    .prologue
    .line 484
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, p1

    .local v1, "range":Ljavafx/scene/control/IndexRange;
    move-object v2, v0

    move-object v3, v1

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TextInputControl;->replaceText(Ljavafx/scene/control/IndexRange;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public deselect()V
    .locals 4

    .prologue
    .line 1074
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    .line 1075
    return-void
.end method

.method public final editableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->editable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method public end()V
    .locals 5

    .prologue
    .line 851
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v2

    move v1, v2

    .line 852
    .local v1, "textLength":I
    move v2, v1

    if-lez v2, :cond_0

    .line 853
    move-object v2, v0

    move v3, v1

    move v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    .line 855
    :cond_0
    return-void
.end method

.method public endOfNextWord()V
    .locals 3

    .prologue
    .line 694
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/control/TextInputControl;->endOfNextWord(Z)V

    .line 695
    return-void
.end method

.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 1584
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v5, Ljavafx/scene/control/TextInputControl$7;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1597
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Ljavafx/scene/control/Control;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 1599
    :cond_0
    :goto_0
    return-void

    .line 1586
    :pswitch_0
    move-object v5, v2

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    .line 1587
    .local v3, "value":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TextInputControl;->setText(Ljava/lang/String;)V

    .line 1590
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    :pswitch_1
    move-object v5, v2

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Integer;

    move-object v3, v5

    .line 1591
    .local v3, "start":Ljava/lang/Integer;
    move-object v5, v2

    const/4 v6, 0x1

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Integer;

    move-object v4, v5

    .line 1592
    .local v4, "end":Ljava/lang/Integer;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v4

    if-eqz v5, :cond_0

    .line 1593
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    goto :goto_0

    .line 1584
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendSelection(I)V
    .locals 10

    .prologue
    .line 1046
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move v1, p1

    .local v1, "pos":I
    const/4 v7, 0x0

    move v8, v1

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v7

    move v2, v7

    .line 1047
    .local v2, "p":I
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v7

    move v3, v7

    .line 1048
    .local v3, "dot":I
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->getAnchor()I

    move-result v7

    move v4, v7

    .line 1049
    .local v4, "mark":I
    move v7, v3

    move v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v5, v7

    .line 1050
    .local v5, "start":I
    move v7, v3

    move v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v6, v7

    .line 1051
    .local v6, "end":I
    move v7, v2

    move v8, v5

    if-ge v7, v8, :cond_0

    .line 1052
    move-object v7, v0

    move v8, v6

    move v9, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    .line 1056
    :goto_0
    return-void

    .line 1054
    :cond_0
    move-object v7, v0

    move v8, v5

    move v9, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    goto :goto_0
.end method

.method public final fontProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->font:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 197
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TextInputControl$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TextInputControl$3;-><init>(Ljavafx/scene/control/TextInputControl;Ljavafx/scene/text/Font;)V

    iput-object v2, v1, Ljavafx/scene/control/TextInputControl;->font:Ljavafx/beans/property/ObjectProperty;

    .line 257
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->font:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method public forward()V
    .locals 8

    .prologue
    .line 947
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v5

    move v1, v5

    .line 948
    .local v1, "textLength":I
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v5

    move v2, v5

    .line 949
    .local v2, "dot":I
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getAnchor()I

    move-result v5

    move v3, v5

    .line 950
    .local v3, "mark":I
    move v5, v2

    move v6, v3

    if-eq v5, v6, :cond_1

    .line 951
    move v5, v2

    move v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v4, v5

    .line 952
    .local v4, "pos":I
    move-object v5, v0

    move v6, v4

    move v7, v4

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    .line 953
    .line 961
    .end local v4    # "pos":I
    :cond_0
    :goto_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->deselect()V

    .line 962
    return-void

    .line 953
    :cond_1
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_0

    move v5, v1

    if-lez v5, :cond_0

    .line 954
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TextInputControl;->charIterator:Ljava/text/BreakIterator;

    if-nez v5, :cond_2

    .line 955
    move-object v5, v0

    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v6

    iput-object v6, v5, Ljavafx/scene/control/TextInputControl;->charIterator:Ljava/text/BreakIterator;

    .line 957
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TextInputControl;->charIterator:Ljava/text/BreakIterator;

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TextInputControl;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 958
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TextInputControl;->charIterator:Ljava/text/BreakIterator;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/text/BreakIterator;->following(I)I

    move-result v5

    move v4, v5

    .line 959
    .restart local v4    # "pos":I
    move-object v5, v0

    move v6, v4

    move v7, v4

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    goto :goto_0
.end method

.method public final getAnchor()I
    .locals 2

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->anchor:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return v0
.end method

.method public final getCaretPosition()I
    .locals 2

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->caretPosition:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return v0
.end method

.method protected final getContent()Ljavafx/scene/control/TextInputControl$Content;
    .locals 2

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->content:Ljavafx/scene/control/TextInputControl$Content;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method public getControlCssMetaData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 1550
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    invoke-static {}, Ljavafx/scene/control/TextInputControl;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method public final getFont()Ljavafx/scene/text/Font;
    .locals 2

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->font:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TextInputControl;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->font:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/text/Font;

    goto :goto_0
.end method

.method public final getLength()I
    .locals 2

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->length:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return v0
.end method

.method public final getPromptText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->promptText:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method public final getSelectedText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->selectedText:Ljavafx/beans/property/ReadOnlyStringWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyStringWrapper;->get()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method public final getSelection()Ljavafx/scene/control/IndexRange;
    .locals 2

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->selection:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/IndexRange;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->text:Ljavafx/scene/control/TextInputControl$TextProperty;

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl$TextProperty;->get()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method public getText(II)Ljava/lang/String;
    .locals 7

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move v3, v1

    move v4, v2

    if-le v3, v4, :cond_0

    .line 446
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "The start must be <= the end"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 449
    :cond_0
    move v3, v1

    if-ltz v3, :cond_1

    move v3, v2

    move-object v4, v0

    .line 450
    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 451
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 454
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl;->getContent()Ljavafx/scene/control/TextInputControl$Content;

    move-result-object v3

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Ljavafx/scene/control/TextInputControl$Content;->get(II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method public final getTextFormatter()Ljavafx/scene/control/TextFormatter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TextFormatter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->textFormatter:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TextFormatter;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method public home()V
    .locals 4

    .prologue
    .line 842
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    .line 843
    return-void
.end method

.method public insertText(ILjava/lang/String;)V
    .locals 7

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "text":Ljava/lang/String;
    move-object v3, v0

    move v4, v1

    move v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Ljavafx/scene/control/TextInputControl;->replaceText(IILjava/lang/String;)V

    .line 474
    return-void
.end method

.method public final isEditable()Z
    .locals 2

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->editable:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return v0
.end method

.method public final isRedoable()Z
    .locals 2

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->redoable:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return v0
.end method

.method public final isUndoable()Z
    .locals 2

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->undoable:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return v0
.end method

.method public final lengthProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 2

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->length:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method public nextWord()V
    .locals 3

    .prologue
    .line 686
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/control/TextInputControl;->nextWord(Z)V

    .line 687
    return-void
.end method

.method public paste()V
    .locals 6

    .prologue
    .line 620
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    invoke-static {}, Ljavafx/scene/input/Clipboard;->getSystemClipboard()Ljavafx/scene/input/Clipboard;

    move-result-object v4

    move-object v1, v4

    .line 621
    .local v1, "clipboard":Ljavafx/scene/input/Clipboard;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/Clipboard;->hasString()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 622
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/Clipboard;->getString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 623
    .local v2, "text":Ljava/lang/String;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 624
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Ljavafx/scene/control/TextInputControl;->createNewUndoRecord:Z

    .line 626
    move-object v4, v0

    move-object v5, v2

    :try_start_0
    invoke-virtual {v4, v5}, Ljavafx/scene/control/TextInputControl;->replaceSelection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/scene/control/TextInputControl;->createNewUndoRecord:Z

    .line 629
    .line 632
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 628
    .restart local v2    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/scene/control/TextInputControl;->createNewUndoRecord:Z

    move-object v4, v3

    throw v4
.end method

.method public positionCaret(I)V
    .locals 6

    .prologue
    .line 998
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move v1, p1

    .local v1, "pos":I
    const/4 v3, 0x0

    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v3

    move v2, v3

    .line 999
    .local v2, "p":I
    move-object v3, v0

    move v4, v2

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    .line 1000
    return-void
.end method

.method public previousWord()V
    .locals 3

    .prologue
    .line 678
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/control/TextInputControl;->previousWord(Z)V

    .line 679
    return-void
.end method

.method public final promptTextProperty()Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->promptText:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 1562
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v5, Ljavafx/scene/control/TextInputControl$7;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1578
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Ljavafx/scene/control/Control;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    :goto_0
    return-object v0

    .line 1564
    .restart local v0    # "this":Ljavafx/scene/control/TextInputControl;
    :pswitch_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getAccessibleText()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 1565
    .local v3, "accText":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 1567
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getText()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1568
    .local v4, "text":Ljava/lang/String;
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1569
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getPromptText()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1571
    :cond_2
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 1573
    .end local v3    # "accText":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :pswitch_1
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->isEditable()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1574
    :pswitch_2
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getSelection()Ljavafx/scene/control/IndexRange;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/IndexRange;->getStart()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1575
    :pswitch_3
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getSelection()Ljavafx/scene/control/IndexRange;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/IndexRange;->getEnd()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1576
    :pswitch_4
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1577
    :pswitch_5
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getFont()Ljavafx/scene/text/Font;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1562
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final redo()V
    .locals 8

    .prologue
    .line 1121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->isRedoable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1123
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    iget-object v5, v5, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->next:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    iput-object v5, v4, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    .line 1124
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    iget v4, v4, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->start:I

    move v1, v4

    .line 1125
    .local v1, "start":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    iget-object v4, v4, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->newText:Ljava/lang/String;

    move-object v2, v4

    .line 1126
    .local v2, "newText":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    iget-object v4, v4, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->oldText:Ljava/lang/String;

    move-object v3, v4

    .line 1128
    .local v3, "oldText":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 1129
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->getContent()Ljavafx/scene/control/TextInputControl$Content;

    move-result-object v4

    move v5, v1

    move v6, v1

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Ljavafx/scene/control/TextInputControl$Content;->delete(IIZ)V

    .line 1132
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 1133
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->getContent()Ljavafx/scene/control/TextInputControl$Content;

    move-result-object v4

    move v5, v1

    move-object v6, v2

    const/4 v7, 0x1

    invoke-interface {v4, v5, v6, v7}, Ljavafx/scene/control/TextInputControl$Content;->insert(ILjava/lang/String;Z)V

    .line 1134
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    move v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TextInputControl;->doSelectRange(II)V

    .line 1139
    .end local v1    # "start":I
    .end local v2    # "newText":Ljava/lang/String;
    .end local v3    # "oldText":Ljava/lang/String;
    :cond_1
    :goto_0
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/control/TextInputControl;->updateUndoRedoState()V

    .line 1141
    return-void

    .line 1136
    .restart local v1    # "start":I
    .restart local v2    # "newText":Ljava/lang/String;
    .restart local v3    # "oldText":Ljava/lang/String;
    :cond_2
    move-object v4, v0

    move v5, v1

    move v6, v1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TextInputControl;->doSelectRange(II)V

    goto :goto_0
.end method

.method public final redoableProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->redoable:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method public replaceSelection(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1084
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, p1

    .local v1, "replacement":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl;->getSelection()Ljavafx/scene/control/IndexRange;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TextInputControl;->replaceText(Ljavafx/scene/control/IndexRange;Ljava/lang/String;)V

    .line 1085
    return-void
.end method

.method public replaceText(IILjava/lang/String;)V
    .locals 15

    .prologue
    .line 523
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move/from16 v1, p1

    .local v1, "start":I
    move/from16 v2, p2

    .local v2, "end":I
    move-object/from16 v3, p3

    .local v3, "text":Ljava/lang/String;
    move v7, v1

    move v8, v2

    if-le v7, v8, :cond_0

    .line 524
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 527
    :cond_0
    move-object v7, v3

    if-nez v7, :cond_1

    .line 528
    new-instance v7, Ljava/lang/NullPointerException;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 531
    :cond_1
    move v7, v1

    if-ltz v7, :cond_2

    move v7, v2

    move-object v8, v0

    .line 532
    invoke-virtual {v8}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v8

    if-le v7, v8, :cond_3

    .line 533
    :cond_2
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7

    .line 536
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TextInputControl;->text:Ljavafx/scene/control/TextInputControl$TextProperty;

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl$TextProperty;->isBound()Z

    move-result v7

    if-nez v7, :cond_5

    .line 537
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v7

    move v4, v7

    .line 538
    .local v4, "oldLength":I
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->getTextFormatter()Ljavafx/scene/control/TextFormatter;

    move-result-object v7

    move-object v5, v7

    .line 539
    .local v5, "formatter":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<*>;"
    new-instance v7, Ljavafx/scene/control/TextFormatter$Change;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    move-object v10, v0

    invoke-direct {v10}, Ljavafx/scene/control/TextInputControl;->getFormatterAccessor()Lcom/sun/javafx/scene/control/FormatterAccessor;

    move-result-object v10

    move v11, v1

    move v12, v2

    move-object v13, v3

    invoke-direct/range {v8 .. v13}, Ljavafx/scene/control/TextFormatter$Change;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/FormatterAccessor;IILjava/lang/String;)V

    move-object v6, v7

    .line 540
    .local v6, "change":Ljavafx/scene/control/TextFormatter$Change;
    move-object v7, v5

    if-eqz v7, :cond_4

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/control/TextFormatter;->getFilter()Ljava/util/function/UnaryOperator;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 541
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/control/TextFormatter;->getFilter()Ljava/util/function/UnaryOperator;

    move-result-object v7

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TextFormatter$Change;

    move-object v6, v7

    .line 542
    move-object v7, v6

    if-nez v7, :cond_4

    .line 543
    .line 551
    .end local v4    # "oldLength":I
    .end local v5    # "formatter":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<*>;"
    .end local v6    # "change":Ljavafx/scene/control/TextFormatter$Change;
    :goto_0
    return-void

    .line 548
    .restart local v4    # "oldLength":I
    .restart local v5    # "formatter":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<*>;"
    .restart local v6    # "change":Ljavafx/scene/control/TextFormatter$Change;
    :cond_4
    move-object v7, v0

    move-object v8, v6

    move v9, v4

    if-nez v9, :cond_6

    const/4 v9, 0x1

    :goto_1
    invoke-direct {v7, v8, v9}, Ljavafx/scene/control/TextInputControl;->updateContent(Ljavafx/scene/control/TextFormatter$Change;Z)V

    .line 551
    .end local v4    # "oldLength":I
    .end local v5    # "formatter":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<*>;"
    .end local v6    # "change":Ljavafx/scene/control/TextFormatter$Change;
    :cond_5
    goto :goto_0

    .line 548
    .restart local v4    # "oldLength":I
    .restart local v5    # "formatter":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<*>;"
    .restart local v6    # "change":Ljavafx/scene/control/TextFormatter$Change;
    :cond_6
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public replaceText(Ljavafx/scene/control/IndexRange;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, p1

    .local v1, "range":Ljavafx/scene/control/IndexRange;
    move-object v2, p2

    .local v2, "text":Ljava/lang/String;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/IndexRange;->getStart()I

    move-result v5

    move v3, v5

    .line 509
    .local v3, "start":I
    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/IndexRange;->getLength()I

    move-result v6

    add-int/2addr v5, v6

    move v4, v5

    .line 510
    .local v4, "end":I
    move-object v5, v0

    move v6, v3

    move v7, v4

    move-object v8, v2

    invoke-virtual {v5, v6, v7, v8}, Ljavafx/scene/control/TextInputControl;->replaceText(IILjava/lang/String;)V

    .line 511
    return-void
.end method

.method public selectAll()V
    .locals 4

    .prologue
    .line 833
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    .line 834
    return-void
.end method

.method public selectBackward()V
    .locals 5

    .prologue
    .line 640
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v1

    if-lez v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v1

    if-lez v1, :cond_1

    .line 643
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->charIterator:Ljava/text/BreakIterator;

    if-nez v1, :cond_0

    .line 644
    move-object v1, v0

    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/TextInputControl;->charIterator:Ljava/text/BreakIterator;

    .line 646
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->charIterator:Ljava/text/BreakIterator;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 647
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->getAnchor()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputControl;->charIterator:Ljava/text/BreakIterator;

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    .line 649
    :cond_1
    return-void
.end method

.method public selectEnd()V
    .locals 5

    .prologue
    .line 872
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v2

    move v1, v2

    .line 873
    .local v1, "textLength":I
    move v2, v1

    if-lez v2, :cond_0

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl;->getAnchor()I

    move-result v3

    move v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    .line 874
    :cond_0
    return-void
.end method

.method public selectEndOfNextWord()V
    .locals 3

    .prologue
    .line 720
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljavafx/scene/control/TextInputControl;->endOfNextWord(Z)V

    .line 721
    return-void
.end method

.method public selectForward()V
    .locals 6

    .prologue
    .line 657
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v2

    move v1, v2

    .line 658
    .local v1, "textLength":I
    move v2, v1

    if-lez v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v2

    move v3, v1

    if-ge v2, v3, :cond_1

    .line 659
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl;->charIterator:Ljava/text/BreakIterator;

    if-nez v2, :cond_0

    .line 660
    move-object v2, v0

    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl;->charIterator:Ljava/text/BreakIterator;

    .line 662
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl;->charIterator:Ljava/text/BreakIterator;

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 663
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl;->getAnchor()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextInputControl;->charIterator:Ljava/text/BreakIterator;

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/text/BreakIterator;->following(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    .line 665
    :cond_1
    return-void
.end method

.method public selectHome()V
    .locals 4

    .prologue
    .line 863
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->getAnchor()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    .line 864
    return-void
.end method

.method public selectNextWord()V
    .locals 3

    .prologue
    .line 712
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljavafx/scene/control/TextInputControl;->nextWord(Z)V

    .line 713
    return-void
.end method

.method public selectPositionCaret(I)V
    .locals 7

    .prologue
    .line 1009
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move v1, p1

    .local v1, "pos":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl;->getAnchor()I

    move-result v3

    const/4 v4, 0x0

    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TextInputControl;->selectRange(II)V

    .line 1010
    return-void
.end method

.method public selectPreviousWord()V
    .locals 3

    .prologue
    .line 703
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljavafx/scene/control/TextInputControl;->previousWord(Z)V

    .line 704
    return-void
.end method

.method public selectRange(II)V
    .locals 12

    .prologue
    .line 1016
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move v1, p1

    .local v1, "anchor":I
    move v2, p2

    .local v2, "caretPosition":I
    const/4 v5, 0x0

    move v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v5

    move v2, v5

    .line 1017
    const/4 v5, 0x0

    move v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v5

    move v1, v5

    .line 1019
    new-instance v5, Ljavafx/scene/control/TextFormatter$Change;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move-object v8, v0

    invoke-direct {v8}, Ljavafx/scene/control/TextInputControl;->getFormatterAccessor()Lcom/sun/javafx/scene/control/FormatterAccessor;

    move-result-object v8

    move v9, v1

    move v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/scene/control/TextFormatter$Change;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/FormatterAccessor;II)V

    move-object v3, v5

    .line 1020
    .local v3, "change":Ljavafx/scene/control/TextFormatter$Change;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl;->getTextFormatter()Ljavafx/scene/control/TextFormatter;

    move-result-object v5

    move-object v4, v5

    .line 1021
    .local v4, "formatter":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<*>;"
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/TextFormatter;->getFilter()Ljava/util/function/UnaryOperator;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1022
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/TextFormatter;->getFilter()Ljava/util/function/UnaryOperator;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v5, v6}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TextFormatter$Change;

    move-object v3, v5

    .line 1023
    move-object v5, v3

    if-nez v5, :cond_0

    .line 1024
    .line 1029
    :goto_0
    return-void

    .line 1028
    :cond_0
    move-object v5, v0

    move-object v6, v3

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljavafx/scene/control/TextInputControl;->updateContent(Ljavafx/scene/control/TextFormatter$Change;Z)V

    .line 1029
    goto :goto_0
.end method

.method public final selectedTextProperty()Ljavafx/beans/property/ReadOnlyStringProperty;
    .locals 2

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->selectedText:Ljavafx/beans/property/ReadOnlyStringWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyStringWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyStringProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method public final selectionProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/control/IndexRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->selection:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method public final setEditable(Z)V
    .locals 4

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl;->editable:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setFont(Ljavafx/scene/text/Font;)V
    .locals 4

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/text/Font;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPromptText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl;->promptText:Ljavafx/beans/property/StringProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl;->text:Ljavafx/scene/control/TextInputControl$TextProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextInputControl$TextProperty;->set(Ljava/lang/String;)V

    return-void
.end method

.method public final setTextFormatter(Ljavafx/scene/control/TextFormatter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TextFormatter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<*>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl;->textFormatter:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final textFormatterProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TextFormatter",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->textFormatter:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method public final textProperty()Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->text:Ljavafx/scene/control/TextInputControl$TextProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method

.method textUpdated()V
    .locals 0

    .prologue
    .line 1145
    return-void
.end method

.method public final undo()V
    .locals 8

    .prologue
    .line 1093
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->isUndoable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1095
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    iget v4, v4, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->start:I

    move v1, v4

    .line 1096
    .local v1, "start":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    iget-object v4, v4, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->newText:Ljava/lang/String;

    move-object v2, v4

    .line 1097
    .local v2, "newText":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    iget-object v4, v4, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->oldText:Ljava/lang/String;

    move-object v3, v4

    .line 1099
    .local v3, "oldText":Ljava/lang/String;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 1100
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->getContent()Ljavafx/scene/control/TextInputControl$Content;

    move-result-object v4

    move v5, v1

    move v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Ljavafx/scene/control/TextInputControl$Content;->delete(IIZ)V

    .line 1103
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 1104
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->getContent()Ljavafx/scene/control/TextInputControl$Content;

    move-result-object v4

    move v5, v1

    move-object v6, v3

    const/4 v7, 0x1

    invoke-interface {v4, v5, v6, v7}, Ljavafx/scene/control/TextInputControl$Content;->insert(ILjava/lang/String;Z)V

    .line 1105
    move-object v4, v0

    move v5, v1

    move v6, v1

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TextInputControl;->doSelectRange(II)V

    .line 1110
    :goto_0
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    iget-object v5, v5, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->prev:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    iput-object v5, v4, Ljavafx/scene/control/TextInputControl;->undoChange:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    .line 1112
    .end local v1    # "start":I
    .end local v2    # "newText":Ljava/lang/String;
    .end local v3    # "oldText":Ljava/lang/String;
    :cond_1
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/control/TextInputControl;->updateUndoRedoState()V

    .line 1113
    return-void

    .line 1107
    .restart local v1    # "start":I
    .restart local v2    # "newText":Ljava/lang/String;
    .restart local v3    # "oldText":Ljava/lang/String;
    :cond_2
    move-object v4, v0

    move v5, v1

    move v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TextInputControl;->doSelectRange(II)V

    goto :goto_0
.end method

.method public final undoableProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl;->undoable:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl;
    return-object v0
.end method
