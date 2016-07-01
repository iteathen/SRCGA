.class public abstract Lcom/sun/xml/stream/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/xml/stream/Entity$ScannedEntity;,
        Lcom/sun/xml/stream/Entity$ExternalEntity;,
        Lcom/sun/xml/stream/Entity$InternalEntity;
    }
.end annotation


# instance fields
.field public inExternalSubset:Z

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 106
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/xml/stream/Entity;->clear()V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "inExternalSubset":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 111
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/xml/stream/Entity;->name:Ljava/lang/String;

    .line 112
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/xml/stream/Entity;->inExternalSubset:Z

    .line 113
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/Entity;->name:Ljava/lang/String;

    .line 133
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/Entity;->inExternalSubset:Z

    .line 134
    return-void
.end method

.method public isEntityDeclInExternalSubset()Z
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/Entity;->inExternalSubset:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/Entity;
    return v0
.end method

.method public abstract isExternal()Z
.end method

.method public abstract isUnparsed()Z
.end method

.method public setValues(Lcom/sun/xml/stream/Entity;)V
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/Entity;
    move-object v1, p1

    .local v1, "entity":Lcom/sun/xml/stream/Entity;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/xml/stream/Entity;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/sun/xml/stream/Entity;->name:Ljava/lang/String;

    .line 139
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Lcom/sun/xml/stream/Entity;->inExternalSubset:Z

    iput-boolean v3, v2, Lcom/sun/xml/stream/Entity;->inExternalSubset:Z

    .line 140
    return-void
.end method
