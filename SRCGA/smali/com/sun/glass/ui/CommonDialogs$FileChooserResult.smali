.class public final Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
.super Ljava/lang/Object;
.source "CommonDialogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/CommonDialogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileChooserResult"
.end annotation


# instance fields
.field private final files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final filter:Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;-><init>(Ljava/util/List;Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    move-object v1, p1

    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object v2, p2

    .local v2, "filter":Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 123
    move-object v3, v1

    if-nez v3, :cond_0

    .line 124
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "files should not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;->files:Ljava/util/List;

    .line 127
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;->filter:Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;

    .line 128
    return-void
.end method


# virtual methods
.method public getExtensionFilter()Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;->filter:Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    return-object v0
.end method

.method public getFiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;->files:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    return-object v0
.end method
