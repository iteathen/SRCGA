.class final Ljavafx/stage/Stage$2;
.super Ljava/lang/Object;
.source "Stage.java"

# interfaces
.implements Lcom/sun/javafx/stage/StageHelper$StageAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/stage/Stage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$2;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStages()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/stage/Stage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$2;
    # getter for: Ljavafx/stage/Stage;->stages:Ljavafx/collections/ObservableList;
    invoke-static {}, Ljavafx/stage/Stage;->access$000()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage$2;
    return-object v0
.end method

.method public initSecurityDialog(Ljavafx/stage/Stage;Z)V
    .locals 5

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$2;
    move-object v1, p1

    .local v1, "stage":Ljavafx/stage/Stage;
    move v2, p2

    .local v2, "securityDialog":Z
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/stage/Stage;->initSecurityDialog(Z)V

    .line 188
    return-void
.end method
