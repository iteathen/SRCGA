.class public final Ljavafx/scene/input/InputMethodEvent;
.super Ljavafx/scene/input/InputEvent;
.source "InputMethodEvent.java"


# static fields
.field public static final ANY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/InputMethodEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final INPUT_METHOD_TEXT_CHANGED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/InputMethodEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1330613L


# instance fields
.field private final caretPosition:I

.field private final committed:Ljava/lang/String;

.field private transient composed:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/input/InputMethodTextRun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 64
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/input/InputEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "INPUT_METHOD_TEXT_CHANGED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/input/InputMethodEvent;->INPUT_METHOD_TEXT_CHANGED:Ljavafx/event/EventType;

    .line 71
    sget-object v0, Ljavafx/scene/input/InputMethodEvent;->INPUT_METHOD_TEXT_CHANGED:Ljavafx/event/EventType;

    sput-object v0, Ljavafx/scene/input/InputMethodEvent;->ANY:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljava/util/List;Ljava/lang/String;I)V
    .locals 11
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
    .param p4    # Ljava/util/List;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "composed"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "committed"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "caretPosition"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/event/EventTarget;",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/InputMethodEvent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/input/InputMethodTextRun;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/InputMethodEvent;
    move-object v1, p1

    .local v1, "source":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "target":Ljavafx/event/EventTarget;
    move-object v3, p3

    .local v3, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/InputMethodEvent;>;"
    move-object v4, p4

    .local v4, "composed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/input/InputMethodTextRun;>;"
    move-object/from16 v5, p5

    .local v5, "committed":Ljava/lang/String;
    move/from16 v6, p6

    .local v6, "caretPosition":I
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Ljavafx/scene/input/InputEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 87
    move-object v7, v0

    move-object v8, v4

    invoke-static {v8}, Ljavafx/collections/FXCollections;->observableArrayList(Ljava/util/Collection;)Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-static {v8}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v8

    iput-object v8, v7, Ljavafx/scene/input/InputMethodEvent;->composed:Ljavafx/collections/ObservableList;

    .line 88
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Ljavafx/scene/input/InputMethodEvent;->committed:Ljava/lang/String;

    .line 89
    move-object v7, v0

    move v8, v6

    iput v8, v7, Ljavafx/scene/input/InputMethodEvent;->caretPosition:I

    .line 90
    return-void
.end method

.method public constructor <init>(Ljavafx/event/EventType;Ljava/util/List;Ljava/lang/String;I)V
    .locals 12
    .param p1    # Ljavafx/event/EventType;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "eventType"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "composed"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "committed"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "caretPosition"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/InputMethodEvent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/input/InputMethodTextRun;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/InputMethodEvent;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/InputMethodEvent;>;"
    move-object v2, p2

    .local v2, "composed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/input/InputMethodTextRun;>;"
    move-object v3, p3

    .local v3, "committed":Ljava/lang/String;
    move/from16 v4, p4

    .local v4, "caretPosition":I
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Ljavafx/scene/input/InputMethodEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljava/util/List;Ljava/lang/String;I)V

    .line 104
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/InputMethodEvent;
    move-object v1, p1

    .local v1, "ois":Ljava/io/ObjectInputStream;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 200
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object v2, v3

    .line 201
    .local v2, "o":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavafx/scene/input/InputMethodTextRun;>;"
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Ljavafx/collections/FXCollections;->observableArrayList(Ljava/util/Collection;)Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-static {v4}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/input/InputMethodEvent;->composed:Ljavafx/collections/ObservableList;

    .line 202
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/InputMethodEvent;
    move-object v1, p1

    .local v1, "oos":Ljava/io/ObjectOutputStream;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 194
    move-object v2, v1

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/input/InputMethodEvent;->composed:Ljavafx/collections/ObservableList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 195
    return-void
.end method


# virtual methods
.method public bridge synthetic copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/InputMethodEvent;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/input/InputMethodEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/InputMethodEvent;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/input/InputMethodEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/InputMethodEvent;
    .locals 6

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/InputMethodEvent;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/input/InputEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;

    move-result-object v3

    check-cast v3, Ljavafx/scene/input/InputMethodEvent;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/input/InputMethodEvent;
    return-object v0
.end method

.method public final getCaretPosition()I
    .locals 2

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/InputMethodEvent;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/input/InputMethodEvent;->caretPosition:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/InputMethodEvent;
    return v0
.end method

.method public final getCommitted()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/InputMethodEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/InputMethodEvent;->committed:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/InputMethodEvent;
    return-object v0
.end method

.method public final getComposed()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/input/InputMethodTextRun;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/InputMethodEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/InputMethodEvent;->composed:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/InputMethodEvent;
    return-object v0
.end method

.method public getEventType()Ljavafx/event/EventType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/InputMethodEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/InputMethodEvent;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/input/InputEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/InputMethodEvent;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/InputMethodEvent;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "InputMethodEvent ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 170
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    const-string v3, "source = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/InputMethodEvent;->getSource()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 171
    move-object v2, v1

    const-string v3, ", target = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/InputMethodEvent;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 172
    move-object v2, v1

    const-string v3, ", eventType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/InputMethodEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 173
    move-object v2, v1

    const-string v3, ", consumed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/InputMethodEvent;->isConsumed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 175
    move-object v2, v1

    const-string v3, ", composed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/InputMethodEvent;->getComposed()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 176
    move-object v2, v1

    const-string v3, ", committed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/InputMethodEvent;->getCommitted()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 177
    move-object v2, v1

    const-string v3, ", caretPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/InputMethodEvent;->getCaretPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 179
    move-object v2, v1

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/InputMethodEvent;
    return-object v0
.end method
