.class public Ljavafx/event/Event;
.super Ljava/util/EventObject;
.source "Event.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ANY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final NULL_SOURCE_TARGET:Ljavafx/event/EventTarget;

.field private static final serialVersionUID:J = 0x1330613L


# instance fields
.field protected consumed:Z

.field protected eventType:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field protected transient target:Ljavafx/event/EventTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Ljavafx/event/Event$$Lambda$1;->lambdaFactory$()Ljavafx/event/EventTarget;

    move-result-object v0

    sput-object v0, Ljavafx/event/Event;->NULL_SOURCE_TARGET:Ljavafx/event/EventTarget;

    .line 55
    sget-object v0, Ljavafx/event/EventType;->ROOT:Ljavafx/event/EventType;

    sput-object v0, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V
    .locals 6
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/event/EventTarget;",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/event/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/event/Event;
    move-object v1, p1

    .local v1, "source":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "target":Ljavafx/event/EventTarget;
    move-object v3, p3

    .local v3, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/event/Event;>;"
    move-object v4, v0

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    :goto_0
    invoke-direct {v4, v5}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 96
    move-object v4, v0

    move-object v5, v2

    if-eqz v5, :cond_1

    move-object v5, v2

    :goto_1
    iput-object v5, v4, Ljavafx/event/Event;->target:Ljavafx/event/EventTarget;

    .line 97
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/event/Event;->eventType:Ljavafx/event/EventType;

    .line 98
    return-void

    .line 95
    :cond_0
    sget-object v5, Ljavafx/event/Event;->NULL_SOURCE_TARGET:Ljavafx/event/EventTarget;

    goto :goto_0

    .line 96
    :cond_1
    sget-object v5, Ljavafx/event/Event;->NULL_SOURCE_TARGET:Ljavafx/event/EventTarget;

    goto :goto_1
.end method

.method public constructor <init>(Ljavafx/event/EventType;)V
    .locals 6
    .param p1    # Ljavafx/event/EventType;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "eventType"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/event/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/event/Event;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/event/Event;>;"
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-direct {v2, v3, v4, v5}, Ljavafx/event/Event;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 81
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljavafx/event/Event;->lambda$static$20(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V
    .locals 6

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "eventTarget":Ljavafx/event/EventTarget;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 191
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Event target must not be null!"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_0
    move-object v2, v1

    if-nez v2, :cond_1

    .line 195
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Event must not be null!"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/event/EventUtil;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v2

    .line 199
    return-void
.end method

.method private static synthetic lambda$static$20(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "tail":Ljavafx/event/EventDispatchChain;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "tail":Ljavafx/event/EventDispatchChain;
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/event/Event;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInputStream;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 175
    move-object v2, v0

    sget-object v3, Ljavafx/event/Event;->NULL_SOURCE_TARGET:Ljavafx/event/EventTarget;

    iput-object v3, v2, Ljavafx/event/Event;->source:Ljava/lang/Object;

    .line 176
    move-object v2, v0

    sget-object v3, Ljavafx/event/Event;->NULL_SOURCE_TARGET:Ljavafx/event/EventTarget;

    iput-object v3, v2, Ljavafx/event/Event;->target:Ljavafx/event/EventTarget;

    .line 177
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/event/Event;
    move-object v2, v0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/event/Event;
    return-object v0

    .line 167
    .restart local v0    # "this":Ljavafx/event/Event;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 169
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Can\'t clone Event"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public consume()V
    .locals 3

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/event/Event;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/event/Event;->consumed:Z

    .line 156
    return-void
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/event/Event;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/event/Event;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/event/Event;

    move-object v3, v4

    .line 133
    .local v3, "newEvent":Ljavafx/event/Event;
    move-object v4, v3

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    :goto_0
    iput-object v5, v4, Ljavafx/event/Event;->source:Ljava/lang/Object;

    .line 134
    move-object v4, v3

    move-object v5, v2

    if-eqz v5, :cond_1

    move-object v5, v2

    :goto_1
    iput-object v5, v4, Ljavafx/event/Event;->target:Ljavafx/event/EventTarget;

    .line 135
    move-object v4, v3

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/event/Event;->consumed:Z

    .line 137
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Ljavafx/event/Event;
    return-object v0

    .line 133
    .restart local v0    # "this":Ljavafx/event/Event;
    :cond_0
    sget-object v5, Ljavafx/event/Event;->NULL_SOURCE_TARGET:Ljavafx/event/EventTarget;

    goto :goto_0

    .line 134
    :cond_1
    sget-object v5, Ljavafx/event/Event;->NULL_SOURCE_TARGET:Ljavafx/event/EventTarget;

    goto :goto_1
.end method

.method public getEventType()Ljavafx/event/EventType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/event/Event;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/event/Event;->eventType:Ljavafx/event/EventType;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/event/Event;
    return-object v0
.end method

.method public getTarget()Ljavafx/event/EventTarget;
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/event/Event;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/event/Event;->target:Ljavafx/event/EventTarget;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/event/Event;
    return-object v0
.end method

.method public isConsumed()Z
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/event/Event;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/event/Event;->consumed:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/event/Event;
    return v0
.end method
