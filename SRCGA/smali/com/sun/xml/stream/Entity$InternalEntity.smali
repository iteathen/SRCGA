.class public Lcom/sun/xml/stream/Entity$InternalEntity;
.super Lcom/sun/xml/stream/Entity;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/stream/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalEntity"
.end annotation


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$InternalEntity;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/Entity;-><init>()V

    .line 164
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/xml/stream/Entity$InternalEntity;->clear()V

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$InternalEntity;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "text":Ljava/lang/String;
    move v3, p3

    .local v3, "inExternalSubset":Z
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-direct {v4, v5, v6}, Lcom/sun/xml/stream/Entity;-><init>(Ljava/lang/String;Z)V

    .line 170
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/xml/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    .line 171
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$InternalEntity;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/xml/stream/Entity;->clear()V

    .line 190
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public final isExternal()Z
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$InternalEntity;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/Entity$InternalEntity;
    return v0
.end method

.method public final isUnparsed()Z
    .locals 2

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$InternalEntity;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/Entity$InternalEntity;
    return v0
.end method

.method public setValues(Lcom/sun/xml/stream/Entity$InternalEntity;)V
    .locals 4

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$InternalEntity;
    move-object v1, p1

    .local v1, "entity":Lcom/sun/xml/stream/Entity$InternalEntity;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/xml/stream/Entity;->setValues(Lcom/sun/xml/stream/Entity;)V

    .line 202
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/xml/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    iput-object v3, v2, Lcom/sun/xml/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setValues(Lcom/sun/xml/stream/Entity;)V
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity$InternalEntity;
    move-object v1, p1

    .local v1, "entity":Lcom/sun/xml/stream/Entity;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/xml/stream/Entity;->setValues(Lcom/sun/xml/stream/Entity;)V

    .line 196
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    .line 197
    return-void
.end method
