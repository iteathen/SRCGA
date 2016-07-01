.class public final Lorg/apache/xerces/util/SymbolHash$Entry;
.super Ljava/lang/Object;
.source "SymbolHash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/SymbolHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Entry"
.end annotation


# instance fields
.field public key:Ljava/lang/Object;

.field public next:Lorg/apache/xerces/util/SymbolHash$Entry;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SymbolHash$Entry;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 228
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    .line 229
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    .line 230
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    .line 231
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/xerces/util/SymbolHash$Entry;)V
    .locals 6

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SymbolHash$Entry;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "next":Lorg/apache/xerces/util/SymbolHash$Entry;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 234
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    .line 235
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    .line 236
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    .line 237
    return-void
.end method


# virtual methods
.method public makeClone()Lorg/apache/xerces/util/SymbolHash$Entry;
    .locals 5

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SymbolHash$Entry;
    new-instance v2, Lorg/apache/xerces/util/SymbolHash$Entry;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/util/SymbolHash$Entry;-><init>()V

    move-object v1, v2

    .line 241
    .local v1, "entry":Lorg/apache/xerces/util/SymbolHash$Entry;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    iput-object v3, v2, Lorg/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    .line 242
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    iput-object v3, v2, Lorg/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    .line 243
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    if-eqz v2, :cond_0

    .line 244
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    invoke-virtual {v3}, Lorg/apache/xerces/util/SymbolHash$Entry;->makeClone()Lorg/apache/xerces/util/SymbolHash$Entry;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    .line 245
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/SymbolHash$Entry;
    return-object v0
.end method
