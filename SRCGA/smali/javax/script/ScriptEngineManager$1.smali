.class Ljavax/script/ScriptEngineManager$1;
.super Ljava/lang/Object;
.source "ScriptEngineManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/script/ScriptEngineManager;->init(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/script/ScriptEngineManager;

.field final synthetic val$loader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljavax/script/ScriptEngineManager;Ljava/lang/ClassLoader;)V
    .locals 5

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptEngineManager$1;
    move-object v1, p1

    .local v1, "this$0":Ljavax/script/ScriptEngineManager;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavax/script/ScriptEngineManager$1;->this$0:Ljavax/script/ScriptEngineManager;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavax/script/ScriptEngineManager$1;->val$loader:Ljava/lang/ClassLoader;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptEngineManager$1;
    move-object v1, v0

    iget-object v1, v1, Ljavax/script/ScriptEngineManager$1;->this$0:Ljavax/script/ScriptEngineManager;

    move-object v2, v0

    iget-object v2, v2, Ljavax/script/ScriptEngineManager$1;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2}, Ljavax/script/ScriptEngineManager;->access$000(Ljavax/script/ScriptEngineManager;Ljava/lang/ClassLoader;)V

    .line 87
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavax/script/ScriptEngineManager$1;
    return-object v0
.end method
