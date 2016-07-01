.class public Lcom/sun/javafx/application/ParametersImpl;
.super Ljavafx/application/Application$Parameters;
.source "ParametersImpl.java"


# static fields
.field private static params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/application/Application;",
            "Ljavafx/application/Application$Parameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private namedParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rawArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readonlyNamedParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readonlyRawArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readonlyUnnamedParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unnamedParams:Ljava/util/List;
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
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/javafx/application/ParametersImpl;->params:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/ParametersImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/application/Application$Parameters;-><init>()V

    .line 45
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/application/ParametersImpl;->rawArgs:Ljava/util/List;

    .line 46
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/application/ParametersImpl;->namedParams:Ljava/util/Map;

    .line 47
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/application/ParametersImpl;->unnamedParams:Ljava/util/List;

    .line 49
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/application/ParametersImpl;->readonlyRawArgs:Ljava/util/List;

    .line 50
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/application/ParametersImpl;->readonlyNamedParams:Ljava/util/Map;

    .line 51
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/application/ParametersImpl;->readonlyUnnamedParams:Ljava/util/List;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 6
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
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/ParametersImpl;
    move-object v1, p1

    .local v1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/application/Application$Parameters;-><init>()V

    .line 45
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/application/ParametersImpl;->rawArgs:Ljava/util/List;

    .line 46
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/application/ParametersImpl;->namedParams:Ljava/util/Map;

    .line 47
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/application/ParametersImpl;->unnamedParams:Ljava/util/List;

    .line 49
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/application/ParametersImpl;->readonlyRawArgs:Ljava/util/List;

    .line 50
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/application/ParametersImpl;->readonlyNamedParams:Ljava/util/Map;

    .line 51
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/application/ParametersImpl;->readonlyUnnamedParams:Ljava/util/List;

    .line 71
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 72
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/application/ParametersImpl;->init(Ljava/util/List;)V

    .line 74
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;[Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/ParametersImpl;
    move-object v1, p1

    .local v1, "params":Ljava/util/Map;
    move-object v2, p2

    .local v2, "arguments":[Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/application/Application$Parameters;-><init>()V

    .line 45
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/application/ParametersImpl;->rawArgs:Ljava/util/List;

    .line 46
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/application/ParametersImpl;->namedParams:Ljava/util/Map;

    .line 47
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/application/ParametersImpl;->unnamedParams:Ljava/util/List;

    .line 49
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/application/ParametersImpl;->readonlyRawArgs:Ljava/util/List;

    .line 50
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/application/ParametersImpl;->readonlyNamedParams:Ljava/util/Map;

    .line 51
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/application/ParametersImpl;->readonlyUnnamedParams:Ljava/util/List;

    .line 96
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/application/ParametersImpl;->init(Ljava/util/Map;[Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/ParametersImpl;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/application/Application$Parameters;-><init>()V

    .line 45
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/application/ParametersImpl;->rawArgs:Ljava/util/List;

    .line 46
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/application/ParametersImpl;->namedParams:Ljava/util/Map;

    .line 47
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/application/ParametersImpl;->unnamedParams:Ljava/util/List;

    .line 49
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/application/ParametersImpl;->readonlyRawArgs:Ljava/util/List;

    .line 50
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/application/ParametersImpl;->readonlyNamedParams:Ljava/util/Map;

    .line 51
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/application/ParametersImpl;->readonlyUnnamedParams:Ljava/util/List;

    .line 83
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 84
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/javafx/application/ParametersImpl;->init(Ljava/util/List;)V

    .line 86
    :cond_0
    return-void
.end method

.method private computeNamedParams()V
    .locals 9

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/ParametersImpl;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/application/ParametersImpl;->rawArgs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v6

    :goto_0
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v2, v6

    .line 208
    .local v2, "arg":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/sun/javafx/application/ParametersImpl;->isNamedParam(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 209
    move-object v6, v2

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move v3, v6

    .line 210
    .local v3, "eqIdx":I
    move-object v6, v2

    const/4 v7, 0x2

    move v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 211
    .local v4, "key":Ljava/lang/String;
    move-object v6, v2

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 212
    .local v5, "value":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/application/ParametersImpl;->namedParams:Ljava/util/Map;

    move-object v7, v4

    move-object v8, v5

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 214
    .end local v3    # "eqIdx":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 215
    .end local v2    # "arg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private computeRawArgs()V
    .locals 9

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/ParametersImpl;
    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 225
    .local v1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/application/ParametersImpl;->namedParams:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v4

    .line 226
    move-object v4, v1

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 227
    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 228
    .local v3, "key":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/application/ParametersImpl;->rawArgs:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/application/ParametersImpl;->namedParams:Ljava/util/Map;

    move-object v7, v3

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 229
    goto :goto_0

    .line 230
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private computeUnnamedParams()V
    .locals 5

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/ParametersImpl;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/application/ParametersImpl;->rawArgs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 195
    .local v2, "arg":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/javafx/application/ParametersImpl;->isNamedParam(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/application/ParametersImpl;->unnamedParams:Ljava/util/List;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 198
    :cond_0
    goto :goto_0

    .line 199
    .end local v2    # "arg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static getParameters(Ljavafx/application/Application;)Ljavafx/application/Application$Parameters;
    .locals 4

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "app":Ljavafx/application/Application;
    sget-object v2, Lcom/sun/javafx/application/ParametersImpl;->params:Ljava/util/Map;

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/application/Application$Parameters;

    move-object v1, v2

    .line 257
    .local v1, "p":Ljavafx/application/Application$Parameters;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "app":Ljavafx/application/Application;
    return-object v0
.end method

.method private init(Ljava/util/List;)V
    .locals 6
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
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/ParametersImpl;
    move-object v1, p1

    .local v1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 107
    .local v3, "arg":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 108
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/application/ParametersImpl;->rawArgs:Ljava/util/List;

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 110
    :cond_0
    goto :goto_0

    .line 111
    .end local v3    # "arg":Ljava/lang/String;
    :cond_1
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/application/ParametersImpl;->computeNamedParams()V

    .line 112
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/application/ParametersImpl;->computeUnnamedParams()V

    .line 113
    return-void
.end method

.method private init(Ljava/util/Map;[Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/ParametersImpl;
    move-object v1, p1

    .local v1, "params":Ljava/util/Map;
    move-object v2, p2

    .local v2, "arguments":[Ljava/lang/String;
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    :goto_0
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 124
    .local v4, "e":Ljava/lang/Object;
    move-object v7, v4

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 125
    .local v5, "key":Ljava/lang/Object;
    move-object v7, v0

    move-object v8, v5

    invoke-direct {v7, v8}, Lcom/sun/javafx/application/ParametersImpl;->validKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 126
    move-object v7, v1

    move-object v8, v5

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 127
    .local v6, "value":Ljava/lang/Object;
    move-object v7, v6

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 128
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/application/ParametersImpl;->namedParams:Ljava/util/Map;

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 131
    .end local v6    # "value":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 133
    .end local v4    # "e":Ljava/lang/Object;
    .end local v5    # "key":Ljava/lang/Object;
    :cond_1
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/javafx/application/ParametersImpl;->computeRawArgs()V

    .line 134
    move-object v7, v2

    if-eqz v7, :cond_2

    .line 135
    move-object v7, v2

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_2

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 136
    .local v6, "arg":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/application/ParametersImpl;->unnamedParams:Ljava/util/List;

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 137
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/application/ParametersImpl;->rawArgs:Ljava/util/List;

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 135
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 140
    .end local v6    # "arg":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private isNamedParam(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/ParametersImpl;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/String;
    move-object v2, v1

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    move-object v2, v1

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/javafx/application/ParametersImpl;->validFirstChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 185
    .end local v0    # "this":Lcom/sun/javafx/application/ParametersImpl;
    :goto_1
    return v0

    .line 183
    .restart local v0    # "this":Lcom/sun/javafx/application/ParametersImpl;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 185
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method public static registerParameters(Ljavafx/application/Application;Ljavafx/application/Application$Parameters;)V
    .locals 5

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "app":Ljavafx/application/Application;
    move-object v1, p1

    .local v1, "p":Ljavafx/application/Application$Parameters;
    sget-object v2, Lcom/sun/javafx/application/ParametersImpl;->params:Ljava/util/Map;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 262
    return-void
.end method

.method private validFirstChar(C)Z
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/ParametersImpl;
    move v1, p1

    .local v1, "c":C
    move v2, v1

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/application/ParametersImpl;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/application/ParametersImpl;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private validKey(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/ParametersImpl;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 164
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 165
    .local v2, "keyStr":Ljava/lang/String;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    move-object v3, v2

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 166
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/application/ParametersImpl;->validFirstChar(C)Z

    move-result v3

    move v0, v3

    .line 170
    .end local v0    # "this":Lcom/sun/javafx/application/ParametersImpl;
    .end local v2    # "keyStr":Ljava/lang/String;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/application/ParametersImpl;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public getNamed()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/ParametersImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/application/ParametersImpl;->readonlyNamedParams:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 241
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/application/ParametersImpl;->namedParams:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/application/ParametersImpl;->readonlyNamedParams:Ljava/util/Map;

    .line 243
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/application/ParametersImpl;->readonlyNamedParams:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/application/ParametersImpl;
    return-object v0
.end method

.method public getRaw()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/ParametersImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/application/ParametersImpl;->readonlyRawArgs:Ljava/util/List;

    if-nez v1, :cond_0

    .line 234
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/application/ParametersImpl;->rawArgs:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/application/ParametersImpl;->readonlyRawArgs:Ljava/util/List;

    .line 236
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/application/ParametersImpl;->readonlyRawArgs:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/application/ParametersImpl;
    return-object v0
.end method

.method public getUnnamed()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/ParametersImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/application/ParametersImpl;->readonlyUnnamedParams:Ljava/util/List;

    if-nez v1, :cond_0

    .line 248
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/application/ParametersImpl;->unnamedParams:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/application/ParametersImpl;->readonlyUnnamedParams:Ljava/util/List;

    .line 250
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/application/ParametersImpl;->readonlyUnnamedParams:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/application/ParametersImpl;
    return-object v0
.end method
