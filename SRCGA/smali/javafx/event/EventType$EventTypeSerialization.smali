.class Ljavafx/event/EventType$EventTypeSerialization;
.super Ljava/lang/Object;
.source "EventType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/event/EventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventTypeSerialization"
.end annotation


# instance fields
.field private path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/event/EventType$EventTypeSerialization;
    move-object v1, p1

    .local v1, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 206
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/event/EventType$EventTypeSerialization;->path:Ljava/util/List;

    .line 207
    return-void
.end method

.method private findSubType(Ljava/util/Set;Ljava/lang/String;)Ljavafx/event/EventType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljavafx/event/EventType;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/event/EventType;"
        }
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/event/EventType$EventTypeSerialization;
    move-object v1, p1

    .local v1, "subTypes":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/event/EventType;>;"
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/event/EventType;

    move-object v4, v5

    .line 228
    .local v4, "t":Ljavafx/event/EventType;
    move-object v5, v4

    invoke-static {v5}, Ljavafx/event/EventType;->access$100(Ljavafx/event/EventType;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, v2

    if-eqz v5, :cond_1

    :cond_0
    move-object v5, v4

    invoke-static {v5}, Ljavafx/event/EventType;->access$100(Ljavafx/event/EventType;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v5, v4

    invoke-static {v5}, Ljavafx/event/EventType;->access$100(Ljavafx/event/EventType;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 229
    :cond_1
    move-object v5, v4

    move-object v0, v5

    .line 232
    .end local v0    # "this":Ljavafx/event/EventType$EventTypeSerialization;
    .end local v4    # "t":Ljavafx/event/EventType;
    :goto_1
    return-object v0

    .line 231
    .restart local v0    # "this":Ljavafx/event/EventType$EventTypeSerialization;
    .restart local v4    # "t":Ljavafx/event/EventType;
    :cond_2
    goto :goto_0

    .line 232
    .end local v4    # "t":Ljavafx/event/EventType;
    :cond_3
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Ljavafx/event/EventType$EventTypeSerialization;
    sget-object v5, Ljavafx/event/EventType;->ROOT:Ljavafx/event/EventType;

    move-object v1, v5

    .line 211
    .local v1, "t":Ljavafx/event/EventType;
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Ljavafx/event/EventType$EventTypeSerialization;->path:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 212
    move-object v5, v0

    iget-object v5, v5, Ljavafx/event/EventType$EventTypeSerialization;->path:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    .line 213
    .local v3, "p":Ljava/lang/String;
    move-object v5, v1

    invoke-static {v5}, Ljavafx/event/EventType;->access$000(Ljavafx/event/EventType;)Ljava/util/WeakHashMap;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 214
    move-object v5, v0

    move-object v6, v1

    invoke-static {v6}, Ljavafx/event/EventType;->access$000(Ljavafx/event/EventType;)Ljava/util/WeakHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Ljavafx/event/EventType$EventTypeSerialization;->findSubType(Ljava/util/Set;Ljava/lang/String;)Ljavafx/event/EventType;

    move-result-object v5

    move-object v4, v5

    .line 215
    .local v4, "s":Ljavafx/event/EventType;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 216
    new-instance v5, Ljava/io/InvalidObjectException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find event type \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" (of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 218
    :cond_0
    move-object v5, v4

    move-object v1, v5

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v4    # "s":Ljavafx/event/EventType;
    :cond_1
    new-instance v5, Ljava/io/InvalidObjectException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find event type \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" (of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 223
    .end local v3    # "p":Ljava/lang/String;
    :cond_2
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Ljavafx/event/EventType$EventTypeSerialization;
    return-object v0
.end method
