.class public final Ljavafx/stage/FileChooser$ExtensionFilter;
.super Ljava/lang/Object;
.source "FileChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/stage/FileChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtensionFilter"
.end annotation


# instance fields
.field private final description:Ljava/lang/String;

.field private final extensions:Ljava/util/List;
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
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser$ExtensionFilter;
    move-object v1, p1

    .local v1, "description":Ljava/lang/String;
    move-object v2, p2

    .local v2, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 137
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    move-object v5, v2

    .line 139
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 138
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    :goto_0
    move-object v3, v4

    .line 141
    .local v3, "extensionsArray":[Ljava/lang/String;
    move-object v4, v1

    move-object v5, v3

    invoke-static {v4, v5}, Ljavafx/stage/FileChooser$ExtensionFilter;->validateArgs(Ljava/lang/String;[Ljava/lang/String;)V

    .line 143
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/stage/FileChooser$ExtensionFilter;->description:Ljava/lang/String;

    .line 144
    move-object v4, v0

    move-object v5, v3

    .line 145
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 144
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Ljavafx/stage/FileChooser$ExtensionFilter;->extensions:Ljava/util/List;

    .line 146
    return-void

    .line 138
    .end local v3    # "extensionsArray":[Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser$ExtensionFilter;
    move-object v1, p1

    .local v1, "description":Ljava/lang/String;
    move-object v2, p2

    .local v2, "extensions":[Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 114
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Ljavafx/stage/FileChooser$ExtensionFilter;->validateArgs(Ljava/lang/String;[Ljava/lang/String;)V

    .line 116
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/stage/FileChooser$ExtensionFilter;->description:Ljava/lang/String;

    .line 117
    move-object v3, v0

    move-object v4, v2

    .line 118
    invoke-virtual {v4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 117
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Ljavafx/stage/FileChooser$ExtensionFilter;->extensions:Ljava/util/List;

    .line 119
    return-void
.end method

.method private static validateArgs(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "description":Ljava/lang/String;
    move-object v1, p1

    .local v1, "extensions":[Ljava/lang/String;
    move-object v6, v0

    if-nez v6, :cond_0

    .line 173
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Description must not be null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 176
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 177
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Description must not be empty"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 181
    :cond_1
    move-object v6, v1

    if-nez v6, :cond_2

    .line 182
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Extensions must not be null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 185
    :cond_2
    move-object v6, v1

    array-length v6, v6

    if-nez v6, :cond_3

    .line 186
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "At least one extension must be defined"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 190
    :cond_3
    move-object v6, v1

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_6

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 191
    .local v5, "extension":Ljava/lang/String;
    move-object v6, v5

    if-nez v6, :cond_4

    .line 192
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Extension must not be null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 196
    :cond_4
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 197
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Extension must not be empty"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 190
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 201
    .end local v5    # "extension":Ljava/lang/String;
    :cond_6
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser$ExtensionFilter;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/FileChooser$ExtensionFilter;->description:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/FileChooser$ExtensionFilter;
    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 2
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
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser$ExtensionFilter;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/FileChooser$ExtensionFilter;->extensions:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/FileChooser$ExtensionFilter;
    return-object v0
.end method
