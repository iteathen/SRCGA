.class public Lcom/sun/javafx/css/StringStore;
.super Ljava/lang/Object;
.source "StringStore.java"


# instance fields
.field private final stringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final strings:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StringStore;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/css/StringStore;->stringMap:Ljava/util/Map;

    .line 42
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/css/StringStore;->strings:Ljava/util/List;

    return-void
.end method

.method static readBinary(Ljava/io/DataInputStream;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "is":Ljava/io/DataInputStream;
    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    move v1, v5

    .line 73
    .local v1, "nStrings":I
    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    move v2, v5

    .line 74
    .local v2, "nullIndex":I
    move v5, v1

    new-array v5, v5, [Ljava/lang/String;

    move-object v3, v5

    .line 75
    .local v3, "strings":[Ljava/lang/String;
    move-object v5, v3

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    const/4 v5, 0x0

    move v4, v5

    .local v4, "n":I
    :goto_0
    move v5, v4

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 77
    move v5, v4

    move v6, v2

    if-ne v5, v6, :cond_0

    .line 76
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78
    :cond_0
    move-object v5, v3

    move v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    goto :goto_1

    .line 80
    :cond_1
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "is":Ljava/io/DataInputStream;
    return-object v0
.end method


# virtual methods
.method public addString(Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StringStore;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StringStore;->stringMap:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v2, v3

    .line 47
    .local v2, "index":Ljava/lang/Integer;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 48
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StringStore;->strings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v2, v3

    .line 49
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StringStore;->strings:Ljava/util/List;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 50
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StringStore;->stringMap:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 52
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/StringStore;
    return v0
.end method

.method public writeBinary(Ljava/io/DataOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StringStore;
    move-object v1, p1

    .local v1, "os":Ljava/io/DataOutputStream;
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/StringStore;->strings:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 57
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/StringStore;->stringMap:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/StringStore;->stringMap:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object v2, v4

    .line 59
    .local v2, "index":Ljava/lang/Integer;
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 60
    .line 63
    .end local v2    # "index":Ljava/lang/Integer;
    :goto_0
    const/4 v4, 0x0

    move v2, v4

    .local v2, "n":I
    :goto_1
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/StringStore;->strings:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 64
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/StringStore;->strings:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 65
    .local v3, "s":Ljava/lang/String;
    move-object v4, v3

    if-nez v4, :cond_1

    .line 63
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 61
    .end local v2    # "n":I
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    move-object v4, v1

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    .line 66
    .restart local v2    # "n":I
    .restart local v3    # "s":Ljava/lang/String;
    :cond_1
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_2

    .line 68
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    return-void
.end method
