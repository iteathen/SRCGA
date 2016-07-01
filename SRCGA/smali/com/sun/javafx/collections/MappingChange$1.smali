.class final Lcom/sun/javafx/collections/MappingChange$1;
.super Ljava/lang/Object;
.source "MappingChange.java"

# interfaces
.implements Lcom/sun/javafx/collections/MappingChange$Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/MappingChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MappingChange$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MappingChange$1;
    move-object v1, p1

    .local v1, "original":Ljava/lang/Object;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/MappingChange$1;
    return-object v0
.end method
