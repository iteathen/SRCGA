.class final Lcom/sun/javafx/fxml/BeanAdapter$1;
.super Ljava/lang/Object;
.source "BeanAdapter.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/fxml/BeanAdapter;->getClassMethodCache(Ljava/lang/Class;)Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<[",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$type:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/fxml/BeanAdapter$1;->val$type:Ljava/lang/Class;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter$1;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/fxml/BeanAdapter$1;->run()[Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter$1;
    return-object v0
.end method

.method public run()[Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/fxml/BeanAdapter$1;->val$type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter$1;
    return-object v0
.end method
