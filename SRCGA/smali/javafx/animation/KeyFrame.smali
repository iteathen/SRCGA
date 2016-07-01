.class public final Ljavafx/animation/KeyFrame;
.super Ljava/lang/Object;
.source "KeyFrame.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_NAME:Ljava/lang/String;

.field private static final DEFAULT_ON_FINISHED:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;

.field private final onFinished:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final time:Ljavafx/util/Duration;

.field private final values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavafx/animation/KeyValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Ljavafx/animation/KeyFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/animation/KeyFrame;->$assertionsDisabled:Z

    .line 58
    const/4 v0, 0x0

    sput-object v0, Ljavafx/animation/KeyFrame;->DEFAULT_ON_FINISHED:Ljavafx/event/EventHandler;

    .line 59
    const/4 v0, 0x0

    sput-object v0, Ljavafx/animation/KeyFrame;->DEFAULT_NAME:Ljava/lang/String;

    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavafx/util/Duration;Ljava/lang/String;Ljavafx/event/EventHandler;Ljava/util/Collection;)V
    .locals 10
    .param p1    # Ljavafx/util/Duration;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "time"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "name"
        .end annotation
    .end param
    .param p3    # Ljavafx/event/EventHandler;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "onFinished"
        .end annotation
    .end param
    .param p4    # Ljava/util/Collection;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "values"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Duration;",
            "Ljava/lang/String;",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljavafx/animation/KeyValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyFrame;
    move-object v1, p1

    .local v1, "time":Ljavafx/util/Duration;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "onFinished":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object v4, p4

    .local v4, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljavafx/animation/KeyValue;>;"
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 143
    move-object v6, v1

    if-nez v6, :cond_0

    .line 144
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "The time has to be specified"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 146
    :cond_0
    move-object v6, v1

    sget-object v7, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {v6, v7}, Ljavafx/util/Duration;->lessThan(Ljavafx/util/Duration;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v1

    sget-object v7, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    invoke-virtual {v6, v7}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 147
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "The time is invalid."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 149
    :cond_2
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafx/animation/KeyFrame;->time:Ljavafx/util/Duration;

    .line 150
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Ljavafx/animation/KeyFrame;->name:Ljava/lang/String;

    .line 151
    move-object v6, v4

    if-eqz v6, :cond_5

    .line 152
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArraySet;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v4

    invoke-direct {v7, v8}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    move-object v5, v6

    .line 153
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/animation/KeyValue;>;"
    move-object v6, v5

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    .line 154
    move-object v6, v0

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    .line 157
    :goto_0
    iput-object v7, v6, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    .line 158
    .line 161
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/animation/KeyValue;>;"
    :goto_1
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljavafx/animation/KeyFrame;->onFinished:Ljavafx/event/EventHandler;

    .line 162
    return-void

    .line 154
    .restart local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/animation/KeyValue;>;"
    :cond_3
    move-object v7, v5

    .line 155
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    move-object v7, v5

    .line 156
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 155
    invoke-static {v7}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    goto :goto_0

    :cond_4
    move-object v7, v5

    .line 157
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    goto :goto_0

    .line 159
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/animation/KeyValue;>;"
    :cond_5
    move-object v6, v0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    iput-object v7, v6, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    goto :goto_1
.end method

.method public varargs constructor <init>(Ljavafx/util/Duration;Ljava/lang/String;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V
    .locals 14
    .param p1    # Ljavafx/util/Duration;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "time"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "name"
        .end annotation
    .end param
    .param p3    # Ljavafx/event/EventHandler;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "onFinished"
        .end annotation
    .end param
    .param p4    # [Ljavafx/animation/KeyValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "values"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Duration;",
            "Ljava/lang/String;",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;[",
            "Ljavafx/animation/KeyValue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyFrame;
    move-object v1, p1

    .local v1, "time":Ljavafx/util/Duration;
    move-object/from16 v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "onFinished":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object/from16 v4, p4

    .local v4, "values":[Ljavafx/animation/KeyValue;
    move-object v10, v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 185
    move-object v10, v1

    if-nez v10, :cond_0

    .line 186
    new-instance v10, Ljava/lang/NullPointerException;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const-string v12, "The time has to be specified"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 188
    :cond_0
    move-object v10, v1

    sget-object v11, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {v10, v11}, Ljavafx/util/Duration;->lessThan(Ljavafx/util/Duration;)Z

    move-result v10

    if-nez v10, :cond_1

    move-object v10, v1

    sget-object v11, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    invoke-virtual {v10, v11}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 189
    :cond_1
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const-string v12, "The time is invalid."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 191
    :cond_2
    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Ljavafx/animation/KeyFrame;->time:Ljavafx/util/Duration;

    .line 192
    move-object v10, v0

    move-object v11, v2

    iput-object v11, v10, Ljavafx/animation/KeyFrame;->name:Ljava/lang/String;

    .line 193
    move-object v10, v4

    if-eqz v10, :cond_7

    .line 194
    new-instance v10, Ljava/util/concurrent/CopyOnWriteArraySet;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    move-object v5, v10

    .line 195
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/animation/KeyValue;>;"
    move-object v10, v4

    move-object v6, v10

    move-object v10, v6

    array-length v10, v10

    move v7, v10

    const/4 v10, 0x0

    move v8, v10

    :goto_0
    move v10, v8

    move v11, v7

    if-ge v10, v11, :cond_4

    move-object v10, v6

    move v11, v8

    aget-object v10, v10, v11

    move-object v9, v10

    .line 196
    .local v9, "keyValue":Ljavafx/animation/KeyValue;
    move-object v10, v9

    if-eqz v10, :cond_3

    .line 197
    move-object v10, v5

    move-object v11, v9

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 195
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 200
    .end local v9    # "keyValue":Ljavafx/animation/KeyValue;
    :cond_4
    move-object v10, v0

    move-object v11, v5

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v11

    if-nez v11, :cond_5

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v11

    .line 203
    :goto_1
    iput-object v11, v10, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    .line 204
    .line 207
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/animation/KeyValue;>;"
    :goto_2
    move-object v10, v0

    move-object v11, v3

    iput-object v11, v10, Ljavafx/animation/KeyFrame;->onFinished:Ljavafx/event/EventHandler;

    .line 208
    return-void

    .line 200
    .restart local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/animation/KeyValue;>;"
    :cond_5
    move-object v11, v5

    .line 201
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    move-object v11, v5

    .line 202
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 201
    invoke-static {v11}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v11

    goto :goto_1

    :cond_6
    move-object v11, v5

    .line 203
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    goto :goto_1

    .line 205
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/animation/KeyValue;>;"
    :cond_7
    move-object v10, v0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v11

    iput-object v11, v10, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    goto :goto_2
.end method

.method public varargs constructor <init>(Ljavafx/util/Duration;Ljava/lang/String;[Ljavafx/animation/KeyValue;)V
    .locals 9
    .param p1    # Ljavafx/util/Duration;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "time"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "name"
        .end annotation
    .end param
    .param p3    # [Ljavafx/animation/KeyValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "values"
        .end annotation
    .end param

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyFrame;
    move-object v1, p1

    .local v1, "time":Ljavafx/util/Duration;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "values":[Ljavafx/animation/KeyValue;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    sget-object v7, Ljavafx/animation/KeyFrame;->DEFAULT_ON_FINISHED:Ljavafx/event/EventHandler;

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljava/lang/String;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    .line 245
    return-void
.end method

.method public varargs constructor <init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V
    .locals 9
    .param p1    # Ljavafx/util/Duration;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "time"
        .end annotation
    .end param
    .param p2    # Ljavafx/event/EventHandler;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "onFinished"
        .end annotation
    .end param
    .param p3    # [Ljavafx/animation/KeyValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "values"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Duration;",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;[",
            "Ljavafx/animation/KeyValue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyFrame;
    move-object v1, p1

    .local v1, "time":Ljavafx/util/Duration;
    move-object v2, p2

    .local v2, "onFinished":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object v3, p3

    .local v3, "values":[Ljavafx/animation/KeyValue;
    move-object v4, v0

    move-object v5, v1

    sget-object v6, Ljavafx/animation/KeyFrame;->DEFAULT_NAME:Ljava/lang/String;

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljava/lang/String;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    .line 227
    return-void
.end method

.method public varargs constructor <init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V
    .locals 8
    .param p1    # Ljavafx/util/Duration;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "time"
        .end annotation
    .end param
    .param p2    # [Ljavafx/animation/KeyValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "values"
        .end annotation
    .end param

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyFrame;
    move-object v1, p1

    .local v1, "time":Ljavafx/util/Duration;
    move-object v2, p2

    .local v2, "values":[Ljavafx/animation/KeyValue;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Ljavafx/animation/KeyFrame;->DEFAULT_NAME:Ljava/lang/String;

    sget-object v6, Ljavafx/animation/KeyFrame;->DEFAULT_ON_FINISHED:Ljavafx/event/EventHandler;

    move-object v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljava/lang/String;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    .line 261
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyFrame;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 299
    const/4 v3, 0x1

    move v0, v3

    .line 311
    .end local v0    # "this":Ljavafx/animation/KeyFrame;
    :goto_0
    return v0

    .line 301
    .restart local v0    # "this":Ljavafx/animation/KeyFrame;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljavafx/animation/KeyFrame;

    if-eqz v3, :cond_7

    .line 302
    move-object v3, v1

    check-cast v3, Ljavafx/animation/KeyFrame;

    move-object v2, v3

    .line 303
    .local v2, "kf":Ljavafx/animation/KeyFrame;
    sget-boolean v3, Ljavafx/animation/KeyFrame;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/KeyFrame;->time:Ljavafx/util/Duration;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    if-eqz v3, :cond_1

    move-object v3, v2

    iget-object v3, v3, Ljavafx/animation/KeyFrame;->time:Ljavafx/util/Duration;

    if-eqz v3, :cond_1

    move-object v3, v2

    iget-object v3, v3, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    if-nez v3, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 305
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/KeyFrame;->time:Ljavafx/util/Duration;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/animation/KeyFrame;->time:Ljavafx/util/Duration;

    invoke-virtual {v3, v4}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/KeyFrame;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    move-object v3, v2

    iget-object v3, v3, Ljavafx/animation/KeyFrame;->name:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 306
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/KeyFrame;->onFinished:Ljavafx/event/EventHandler;

    if-nez v3, :cond_6

    move-object v3, v2

    iget-object v3, v3, Ljavafx/animation/KeyFrame;->onFinished:Ljavafx/event/EventHandler;

    if-nez v3, :cond_5

    .line 308
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    .line 309
    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto :goto_0

    .line 305
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/KeyFrame;->name:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/animation/KeyFrame;->name:Ljava/lang/String;

    .line 306
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 309
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 306
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/KeyFrame;->onFinished:Ljavafx/event/EventHandler;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/animation/KeyFrame;->onFinished:Ljavafx/event/EventHandler;

    .line 308
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 311
    .end local v2    # "kf":Ljavafx/animation/KeyFrame;
    :cond_7
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyFrame;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/KeyFrame;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/KeyFrame;
    return-object v0
.end method

.method public getOnFinished()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyFrame;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/KeyFrame;->onFinished:Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/KeyFrame;
    return-object v0
.end method

.method public getTime()Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyFrame;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/KeyFrame;->time:Ljavafx/util/Duration;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/KeyFrame;
    return-object v0
.end method

.method public getValues()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavafx/animation/KeyValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyFrame;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/KeyFrame;
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyFrame;
    sget-boolean v3, Ljavafx/animation/KeyFrame;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/KeyFrame;->time:Ljavafx/util/Duration;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 280
    :cond_1
    const/16 v3, 0x1f

    move v1, v3

    .line 281
    .local v1, "prime":I
    const/4 v3, 0x1

    move v2, v3

    .line 282
    .local v2, "result":I
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/KeyFrame;->time:Ljavafx/util/Duration;

    invoke-virtual {v4}, Ljavafx/util/Duration;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    move v2, v3

    .line 283
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/KeyFrame;->name:Ljava/lang/String;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    :goto_0
    add-int/2addr v3, v4

    move v2, v3

    .line 284
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/KeyFrame;->onFinished:Ljavafx/event/EventHandler;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    .line 285
    :goto_1
    add-int/2addr v3, v4

    move v2, v3

    .line 286
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    move v2, v3

    .line 287
    move v3, v2

    move v0, v3

    .end local v0    # "this":Ljavafx/animation/KeyFrame;
    return v0

    .line 283
    .restart local v0    # "this":Ljavafx/animation/KeyFrame;
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/KeyFrame;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_0

    .line 284
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/KeyFrame;->onFinished:Ljavafx/event/EventHandler;

    .line 285
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyFrame;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyFrame [time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/KeyFrame;->time:Ljavafx/util/Duration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", values="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/KeyFrame;->values:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", onFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/KeyFrame;->onFinished:Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/KeyFrame;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/KeyFrame;
    return-object v0
.end method
