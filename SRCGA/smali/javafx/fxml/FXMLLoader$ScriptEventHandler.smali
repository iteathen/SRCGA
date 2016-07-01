.class Ljavafx/fxml/FXMLLoader$ScriptEventHandler;
.super Ljava/lang/Object;
.source "FXMLLoader.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/FXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScriptEventHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/event/Event;",
        ">;"
    }
.end annotation


# instance fields
.field public final script:Ljava/lang/String;

.field public final scriptEngine:Ljavax/script/ScriptEngine;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/script/ScriptEngine;)V
    .locals 5

    .prologue
    .line 1666
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ScriptEventHandler;
    move-object v1, p1

    .local v1, "script":Ljava/lang/String;
    move-object v2, p2

    .local v2, "scriptEngine":Ljavax/script/ScriptEngine;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1667
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/fxml/FXMLLoader$ScriptEventHandler;->script:Ljava/lang/String;

    .line 1668
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/fxml/FXMLLoader$ScriptEventHandler;->scriptEngine:Ljavax/script/ScriptEngine;

    .line 1669
    return-void
.end method


# virtual methods
.method public handle(Ljavafx/event/Event;)V
    .locals 9

    .prologue
    .line 1674
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ScriptEventHandler;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$ScriptEventHandler;->scriptEngine:Ljavax/script/ScriptEngine;

    const/16 v6, 0x64

    invoke-interface {v5, v6}, Ljavax/script/ScriptEngine;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v5

    move-object v2, v5

    .line 1675
    .local v2, "engineBindings":Ljavax/script/Bindings;
    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$ScriptEventHandler;->scriptEngine:Ljavax/script/ScriptEngine;

    invoke-interface {v5}, Ljavax/script/ScriptEngine;->createBindings()Ljavax/script/Bindings;

    move-result-object v5

    move-object v3, v5

    .line 1676
    .local v3, "localBindings":Ljavax/script/Bindings;
    move-object v5, v3

    const-string v6, "event"

    move-object v7, v1

    invoke-interface {v5, v6, v7}, Ljavax/script/Bindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1677
    move-object v5, v3

    move-object v6, v2

    invoke-interface {v5, v6}, Ljavax/script/Bindings;->putAll(Ljava/util/Map;)V

    .line 1678
    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$ScriptEventHandler;->scriptEngine:Ljavax/script/ScriptEngine;

    move-object v6, v3

    const/16 v7, 0x64

    invoke-interface {v5, v6, v7}, Ljavax/script/ScriptEngine;->setBindings(Ljavax/script/Bindings;I)V

    .line 1682
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$ScriptEventHandler;->scriptEngine:Ljavax/script/ScriptEngine;

    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$ScriptEventHandler;->script:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljavax/script/ScriptEngine;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/script/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1685
    .line 1688
    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$ScriptEventHandler;->scriptEngine:Ljavax/script/ScriptEngine;

    move-object v6, v2

    const/16 v7, 0x64

    invoke-interface {v5, v6, v7}, Ljavax/script/ScriptEngine;->setBindings(Ljavax/script/Bindings;I)V

    .line 1689
    return-void

    .line 1683
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1684
    .local v4, "exception":Ljavax/script/ScriptException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
