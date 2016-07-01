.class abstract Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
.super Ljava/lang/Object;
.source "AugmentationsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/AugmentationsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AugmentationsItemsContainer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xerces/util/AugmentationsImpl;


# direct methods
.method constructor <init>(Lorg/apache/xerces/util/AugmentationsImpl;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
    move-object v1, p1

    .local v1, "this$0":Lorg/apache/xerces/util/AugmentationsImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->this$0:Lorg/apache/xerces/util/AugmentationsImpl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract expand()Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
.end method

.method public abstract getItem(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract isFull()Z
.end method

.method public abstract keys()Ljava/util/Enumeration;
.end method

.method public abstract putItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract removeItem(Ljava/lang/Object;)Ljava/lang/Object;
.end method
