.class final Landroid/support/multidex/MultiDexExtractor$1;
.super Ljava/lang/Object;
.source "MultiDexExtractor.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/multidex/MultiDexExtractor;->prepareDexDir(Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$extractedFilePrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Landroid/support/multidex/MultiDexExtractor$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/multidex/MultiDexExtractor$1;->val$extractedFilePrefix:Ljava/lang/String;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Landroid/support/multidex/MultiDexExtractor$1;
    move-object v1, p1

    .local v1, "pathname":Ljava/io/File;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/multidex/MultiDexExtractor$1;->val$extractedFilePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroid/support/multidex/MultiDexExtractor$1;
    return v0

    .restart local v0    # "this":Landroid/support/multidex/MultiDexExtractor$1;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
