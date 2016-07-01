.class public final Lcom/sun/javafx/css/FontFace;
.super Ljava/lang/Object;
.source "FontFace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/FontFace$FontFaceSrc;,
        Lcom/sun/javafx/css/FontFace$FontFaceSrcType;
    }
.end annotation


# instance fields
.field private final descriptors:Ljava/util/Map;
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

.field private final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/FontFace$FontFaceSrc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/FontFace$FontFaceSrc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/FontFace;
    move-object v1, p1

    .local v1, "descriptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, "sources":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/FontFace$FontFaceSrc;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/css/FontFace;->descriptors:Ljava/util/Map;

    .line 48
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/css/FontFace;->sources:Ljava/util/List;

    .line 49
    return-void
.end method

.method static final readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)Lcom/sun/javafx/css/FontFace;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    move v0, p0

    .local v0, "bssVersion":I
    move-object v1, p1

    .local v1, "is":Ljava/io/DataInputStream;
    move-object/from16 v2, p2

    .local v2, "strings":[Ljava/lang/String;
    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    move v3, v9

    .line 106
    .local v3, "nEntries":I
    new-instance v9, Ljava/util/HashMap;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move v11, v3

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(I)V

    move-object v4, v9

    .line 107
    .local v4, "descriptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    move v5, v9

    .local v5, "n":I
    :goto_0
    move v9, v5

    move v10, v3

    if-ge v9, v10, :cond_0

    .line 108
    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    move v6, v9

    .line 109
    .local v6, "index":I
    move-object v9, v2

    move v10, v6

    aget-object v9, v9, v10

    move-object v7, v9

    .line 110
    .local v7, "key":Ljava/lang/String;
    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    move v6, v9

    .line 111
    move-object v9, v2

    move v10, v6

    aget-object v9, v9, v10

    move-object v8, v9

    .line 112
    .local v8, "value":Ljava/lang/String;
    move-object v9, v4

    move-object v10, v7

    move-object v11, v8

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 107
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 115
    .end local v6    # "index":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    move v3, v9

    .line 116
    new-instance v9, Ljava/util/ArrayList;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move v11, v3

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v9

    .line 117
    .local v5, "fontFaceSrcs":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/FontFace$FontFaceSrc;>;"
    const/4 v9, 0x0

    move v6, v9

    .local v6, "n":I
    :goto_1
    move v9, v6

    move v10, v3

    if-ge v9, v10, :cond_1

    .line 118
    move v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-static {v9, v10, v11}, Lcom/sun/javafx/css/FontFace$FontFaceSrc;->readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)Lcom/sun/javafx/css/FontFace$FontFaceSrc;

    move-result-object v9

    move-object v7, v9

    .line 119
    .local v7, "fontFaceSrc":Lcom/sun/javafx/css/FontFace$FontFaceSrc;
    move-object v9, v5

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 117
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 122
    .end local v7    # "fontFaceSrc":Lcom/sun/javafx/css/FontFace$FontFaceSrc;
    :cond_1
    new-instance v9, Lcom/sun/javafx/css/FontFace;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v4

    move-object v12, v5

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/css/FontFace;-><init>(Ljava/util/Map;Ljava/util/List;)V

    move-object v0, v9

    .end local v0    # "bssVersion":I
    return-object v0
.end method


# virtual methods
.method public getDescriptors()Ljava/util/Map;
    .locals 2
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
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/FontFace;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/FontFace;->descriptors:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/FontFace;
    return-object v0
.end method

.method public getSources()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/FontFace$FontFaceSrc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/FontFace;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/FontFace;->sources:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/FontFace;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/FontFace;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "@font-face { "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 61
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/FontFace;->descriptors:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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

    check-cast v4, Ljava/util/Map$Entry;

    move-object v3, v4

    .line 62
    .local v3, "desc":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 63
    move-object v4, v1

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 64
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 65
    move-object v4, v1

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 66
    goto :goto_0

    .line 67
    .end local v3    # "desc":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    move-object v4, v1

    const-string v5, "src : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 68
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/FontFace;->sources:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/css/FontFace$FontFaceSrc;

    move-object v3, v4

    .line 69
    .local v3, "src":Lcom/sun/javafx/css/FontFace$FontFaceSrc;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Lcom/sun/javafx/css/FontFace$FontFaceSrc;->getType()Lcom/sun/javafx/css/FontFace$FontFaceSrcType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 70
    move-object v4, v1

    const-string v5, " \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 71
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Lcom/sun/javafx/css/FontFace$FontFaceSrc;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 72
    move-object v4, v1

    const-string v5, "\", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 73
    goto :goto_1

    .line 74
    .end local v3    # "src":Lcom/sun/javafx/css/FontFace$FontFaceSrc;
    :cond_1
    move-object v4, v1

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 75
    move-object v4, v1

    const-string v5, " }"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 76
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/css/FontFace;
    return-object v0
.end method

.method final writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/FontFace;
    move-object v1, p1

    .local v1, "os":Ljava/io/DataOutputStream;
    move-object v2, p2

    .local v2, "stringStore":Lcom/sun/javafx/css/StringStore;
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/css/FontFace;->getDescriptors()Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/css/FontFace;->getDescriptors()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    :goto_0
    move-object v3, v8

    .line 82
    .local v3, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object v8, v3

    if-eqz v8, :cond_1

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    :goto_1
    move v4, v8

    .line 83
    .local v4, "nEntries":I
    move-object v8, v1

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 84
    move-object v8, v3

    if-eqz v8, :cond_2

    .line 85
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_2
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v6, v8

    .line 86
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v8, v2

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/sun/javafx/css/StringStore;->addString(Ljava/lang/String;)I

    move-result v8

    move v7, v8

    .line 87
    .local v7, "index":I
    move-object v8, v1

    move v9, v7

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 88
    move-object v8, v2

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/sun/javafx/css/StringStore;->addString(Ljava/lang/String;)I

    move-result v8

    move v7, v8

    .line 89
    move-object v8, v1

    move v9, v7

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 90
    goto :goto_2

    .line 81
    .end local v3    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "nEntries":I
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "index":I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 82
    .restart local v3    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 93
    .restart local v4    # "nEntries":I
    :cond_2
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/css/FontFace;->getSources()Ljava/util/List;

    move-result-object v8

    move-object v5, v8

    .line 94
    .local v5, "fontFaceSrcs":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/FontFace$FontFaceSrc;>;"
    move-object v8, v5

    if-eqz v8, :cond_3

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    :goto_3
    move v4, v8

    .line 95
    move-object v8, v1

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 96
    const/4 v8, 0x0

    move v6, v8

    .local v6, "n":I
    :goto_4
    move v8, v6

    move v9, v4

    if-ge v8, v9, :cond_4

    .line 97
    move-object v8, v5

    move v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/css/FontFace$FontFaceSrc;

    move-object v7, v8

    .line 98
    .local v7, "fontFaceSrc":Lcom/sun/javafx/css/FontFace$FontFaceSrc;
    move-object v8, v7

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/css/FontFace$FontFaceSrc;->writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V

    .line 96
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 94
    .end local v6    # "n":I
    .end local v7    # "fontFaceSrc":Lcom/sun/javafx/css/FontFace$FontFaceSrc;
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 101
    .restart local v6    # "n":I
    :cond_4
    return-void
.end method
