.class public Lcom/sun/xml/stream/Entity$ExternalEntity;
.super Lcom/sun/xml/stream/Entity;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/stream/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalEntity"
.end annotation


# instance fields
.field public entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

.field public notation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$ExternalEntity;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/Entity;-><init>()V

    .line 231
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/xml/stream/Entity$ExternalEntity;->clear()V

    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$ExternalEntity;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "entityLocation":Lorg/apache/xerces/xni/XMLResourceIdentifier;
    move-object v3, p3

    .local v3, "notation":Ljava/lang/String;
    move v4, p4

    .local v4, "inExternalSubset":Z
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-direct {v5, v6, v7}, Lcom/sun/xml/stream/Entity;-><init>(Ljava/lang/String;Z)V

    .line 238
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/xml/stream/Entity$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    .line 239
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/xml/stream/Entity$ExternalEntity;->notation:Ljava/lang/String;

    .line 240
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$ExternalEntity;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/xml/stream/Entity;->clear()V

    .line 259
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/Entity$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    .line 260
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/Entity$ExternalEntity;->notation:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public final isExternal()Z
    .locals 2

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$ExternalEntity;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/Entity$ExternalEntity;
    return v0
.end method

.method public final isUnparsed()Z
    .locals 2

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$ExternalEntity;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/Entity$ExternalEntity;->notation:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/Entity$ExternalEntity;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/Entity$ExternalEntity;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setValues(Lcom/sun/xml/stream/Entity$ExternalEntity;)V
    .locals 4

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$ExternalEntity;
    move-object v1, p1

    .local v1, "entity":Lcom/sun/xml/stream/Entity$ExternalEntity;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/xml/stream/Entity;->setValues(Lcom/sun/xml/stream/Entity;)V

    .line 273
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/xml/stream/Entity$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    iput-object v3, v2, Lcom/sun/xml/stream/Entity$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    .line 274
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/xml/stream/Entity$ExternalEntity;->notation:Ljava/lang/String;

    iput-object v3, v2, Lcom/sun/xml/stream/Entity$ExternalEntity;->notation:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setValues(Lcom/sun/xml/stream/Entity;)V
    .locals 4

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$ExternalEntity;
    move-object v1, p1

    .local v1, "entity":Lcom/sun/xml/stream/Entity;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/xml/stream/Entity;->setValues(Lcom/sun/xml/stream/Entity;)V

    .line 266
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/Entity$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    .line 267
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/Entity$ExternalEntity;->notation:Ljava/lang/String;

    .line 268
    return-void
.end method
