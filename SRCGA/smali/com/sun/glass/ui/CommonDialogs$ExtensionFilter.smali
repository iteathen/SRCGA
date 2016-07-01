.class public final Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;
.super Ljava/lang/Object;
.source "CommonDialogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/CommonDialogs;
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
    .locals 9
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
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;
    move-object v1, p1

    .local v1, "description":Ljava/lang/String;
    move-object v2, p2

    .local v2, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 76
    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 77
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Description parameter must be non-null and not empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 80
    :cond_1
    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 81
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Extensions parameter must be non-null and not empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 84
    :cond_3
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 85
    .local v4, "extension":Ljava/lang/String;
    move-object v5, v4

    if-eqz v5, :cond_4

    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 86
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Each extension must be non-null and not empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 88
    :cond_5
    goto :goto_0

    .line 90
    .end local v4    # "extension":Ljava/lang/String;
    :cond_6
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;->description:Ljava/lang/String;

    .line 91
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;->extensions:Ljava/util/List;

    .line 92
    return-void
.end method

.method private extensionsToArray()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 107
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;->extensions:Ljava/util/List;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;->extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 96
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;->description:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;
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
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 101
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;->extensions:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;
    return-object v0
.end method
