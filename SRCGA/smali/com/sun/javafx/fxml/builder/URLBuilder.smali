.class public Lcom/sun/javafx/fxml/builder/URLBuilder;
.super Ljava/util/AbstractMap;
.source "URLBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljavafx/util/Builder",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# static fields
.field public static final VALUE_KEY:Ljava/lang/String; = "value"


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/URLBuilder;
    move-object v1, p1

    .local v1, "classLoader":Ljava/lang/ClassLoader;
    move-object v2, v0

    invoke-direct {v2}, Ljava/util/AbstractMap;-><init>()V

    .line 41
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/fxml/builder/URLBuilder;->value:Ljava/lang/Object;

    .line 46
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/fxml/builder/URLBuilder;->classLoader:Ljava/lang/ClassLoader;

    .line 47
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/URLBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/fxml/builder/URLBuilder;->build()Ljava/net/URL;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/URLBuilder;
    return-object v0
.end method

.method public build()Ljava/net/URL;
    .locals 8

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/URLBuilder;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/fxml/builder/URLBuilder;->value:Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 67
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 71
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/fxml/builder/URLBuilder;->value:Ljava/lang/Object;

    instance-of v4, v4, Ljava/net/URL;

    if-eqz v4, :cond_1

    .line 72
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/fxml/builder/URLBuilder;->value:Ljava/lang/Object;

    check-cast v4, Ljava/net/URL;

    move-object v1, v4

    .line 87
    .local v1, "url":Ljava/net/URL;
    :goto_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/URLBuilder;
    return-object v0

    .line 74
    .end local v1    # "url":Ljava/net/URL;
    .restart local v0    # "this":Lcom/sun/javafx/fxml/builder/URLBuilder;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/fxml/builder/URLBuilder;->value:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 76
    .local v2, "spec":Ljava/lang/String;
    move-object v4, v2

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/fxml/builder/URLBuilder;->classLoader:Ljava/lang/ClassLoader;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    move-object v1, v4

    .restart local v1    # "url":Ljava/net/URL;
    goto :goto_0

    .line 80
    .end local v1    # "url":Ljava/net/URL;
    :cond_2
    :try_start_0
    new-instance v4, Ljava/net/URL;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 83
    .restart local v1    # "url":Ljava/net/URL;
    goto :goto_0

    .line 81
    .end local v1    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 82
    .local v3, "exception":Ljava/net/MalformedURLException;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public entrySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/URLBuilder;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/URLBuilder;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/fxml/builder/URLBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/URLBuilder;
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/URLBuilder;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 52
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 55
    :cond_0
    move-object v3, v1

    const-string v4, "value"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/fxml/builder/URLBuilder;->value:Ljava/lang/Object;

    .line 61
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/URLBuilder;
    return-object v0

    .line 58
    .restart local v0    # "this":Lcom/sun/javafx/fxml/builder/URLBuilder;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a valid property."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
