.class final Lcom/sun/javafx/util/TempState$1;
.super Ljava/lang/ThreadLocal;
.source "TempState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/util/TempState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/sun/javafx/util/TempState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/util/TempState$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/sun/javafx/util/TempState;
    .locals 5

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/util/TempState$1;
    new-instance v1, Lcom/sun/javafx/util/TempState;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sun/javafx/util/TempState;-><init>(Lcom/sun/javafx/util/TempState$1;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/util/TempState$1;
    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/util/TempState$1;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/util/TempState$1;->initialValue()Lcom/sun/javafx/util/TempState;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/util/TempState$1;
    return-object v0
.end method
