.class public final Ljavafx/event/EventType;
.super Ljava/lang/Object;
.source "EventType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/event/EventType$EventTypeSerialization;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljavafx/event/Event;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final ROOT:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;

.field private subTypes:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljavafx/event/EventType",
            "<+TT;>;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final superType:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<-TT;>;"
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

    const-string v2, "EVENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljava/lang/String;Ljavafx/event/EventType;)V

    sput-object v0, Ljavafx/event/EventType;->ROOT:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v1, v0

    sget-object v2, Ljavafx/event/EventType;->ROOT:Ljavafx/event/EventType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    sget-object v3, Ljavafx/event/EventType;->ROOT:Ljavafx/event/EventType;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljavafx/event/EventType;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavafx/event/EventType",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "superType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<-TT;>;"
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 136
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljavafx/event/EventType;->superType:Ljavafx/event/EventType;

    .line 137
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/event/EventType;->name:Ljava/lang/String;

    .line 138
    move-object v5, v2

    if-eqz v5, :cond_4

    .line 139
    move-object v5, v2

    iget-object v5, v5, Ljavafx/event/EventType;->subTypes:Ljava/util/WeakHashMap;

    if-eqz v5, :cond_3

    .line 140
    move-object v5, v2

    iget-object v5, v5, Ljavafx/event/EventType;->subTypes:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    .local v3, "i":Ljava/util/Iterator;
    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 141
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/event/EventType;

    move-object v4, v5

    .line 142
    .local v4, "t":Ljavafx/event/EventType;
    move-object v5, v1

    if-nez v5, :cond_0

    move-object v5, v4

    iget-object v5, v5, Ljavafx/event/EventType;->name:Ljava/lang/String;

    if-eqz v5, :cond_1

    :cond_0
    move-object v5, v1

    if-eqz v5, :cond_2

    move-object v5, v1

    move-object v6, v4

    iget-object v6, v6, Ljavafx/event/EventType;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 143
    :cond_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 145
    :cond_2
    goto :goto_0

    .line 147
    .end local v3    # "i":Ljava/util/Iterator;
    .end local v4    # "t":Ljavafx/event/EventType;
    :cond_3
    move-object v5, v2

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/event/EventType;->register(Ljavafx/event/EventType;)V

    .line 149
    :cond_4
    return-void
.end method

.method public constructor <init>(Ljavafx/event/EventType;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v1, p1

    .local v1, "superType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<-TT;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljavafx/event/EventType;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<-TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v1, p1

    .local v1, "superType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<-TT;>;"
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 121
    move-object v3, v1

    if-nez v3, :cond_0

    .line 122
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Event super type must not be null!"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/event/EventType;->superType:Ljavafx/event/EventType;

    .line 127
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/event/EventType;->name:Ljava/lang/String;

    .line 128
    move-object v3, v1

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/event/EventType;->register(Ljavafx/event/EventType;)V

    .line 129
    return-void
.end method

.method static synthetic access$000(Ljavafx/event/EventType;)Ljava/util/WeakHashMap;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "x0":Ljavafx/event/EventType;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/event/EventType;->subTypes:Ljava/util/WeakHashMap;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/event/EventType;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/event/EventType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "x0":Ljavafx/event/EventType;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/event/EventType;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/event/EventType;
    return-object v0
.end method

.method private register(Ljavafx/event/EventType;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v1, p1

    .local v1, "subType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+TT;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/event/EventType;->subTypes:Ljava/util/WeakHashMap;

    if-nez v4, :cond_0

    .line 181
    move-object v4, v0

    new-instance v5, Ljava/util/WeakHashMap;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v5, v4, Ljavafx/event/EventType;->subTypes:Ljava/util/WeakHashMap;

    .line 183
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/event/EventType;->subTypes:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/event/EventType;

    move-object v3, v4

    .line 184
    .local v3, "t":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+TT;>;"
    move-object v4, v3

    iget-object v4, v4, Ljavafx/event/EventType;->name:Ljava/lang/String;

    if-nez v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Ljavafx/event/EventType;->name:Ljava/lang/String;

    if-eqz v4, :cond_2

    :cond_1
    move-object v4, v3

    iget-object v4, v4, Ljavafx/event/EventType;->name:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object v4, v3

    iget-object v4, v4, Ljavafx/event/EventType;->name:Ljava/lang/String;

    move-object v5, v1

    iget-object v5, v5, Ljavafx/event/EventType;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 185
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EventType \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "with parent \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    .line 186
    invoke-virtual {v7}, Ljavafx/event/EventType;->getSuperType()Ljavafx/event/EventType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" already exists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 188
    :cond_3
    goto :goto_0

    .line 189
    .end local v3    # "t":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+TT;>;"
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Ljavafx/event/EventType;->subTypes:Ljava/util/WeakHashMap;

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 190
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    new-instance v3, Ljava/util/LinkedList;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v3

    .line 194
    .local v1, "path":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/String;>;"
    move-object v3, v0

    move-object v2, v3

    .line 195
    .local v2, "t":Ljavafx/event/EventType;, "Ljavafx/event/EventType<*>;"
    :goto_0
    move-object v3, v2

    sget-object v4, Ljavafx/event/EventType;->ROOT:Ljavafx/event/EventType;

    if-eq v3, v4, :cond_0

    .line 196
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Ljavafx/event/EventType;->name:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 197
    move-object v3, v2

    iget-object v3, v3, Ljavafx/event/EventType;->superType:Ljavafx/event/EventType;

    move-object v2, v3

    goto :goto_0

    .line 199
    :cond_0
    new-instance v3, Ljavafx/event/EventType$EventTypeSerialization;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v4, v5}, Ljavafx/event/EventType$EventTypeSerialization;-><init>(Ljava/util/List;)V

    move-object v0, v3

    .end local v0    # "this":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/event/EventType;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    return-object v0
.end method

.method public final getSuperType()Ljavafx/event/EventType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventType",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/event/EventType;->superType:Ljavafx/event/EventType;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/event/EventType;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/event/EventType;->name:Ljava/lang/String;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
