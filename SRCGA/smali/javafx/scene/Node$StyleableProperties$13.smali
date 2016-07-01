.class final Ljavafx/scene/Node$StyleableProperties$13;
.super Ljavafx/css/StyleConverter;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Node$StyleableProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleConverter",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 8678
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$StyleableProperties$13;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/css/StyleConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 8683
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$StyleableProperties$13;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<Ljava/lang/String;Ljava/lang/Boolean;>;"
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_0
    move-object v3, v4

    .line 8684
    .local v3, "sval":Ljava/lang/String;
    const-string v4, "visible"

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/Node$StyleableProperties$13;
    return-object v0

    .line 8683
    .end local v3    # "sval":Ljava/lang/String;
    .restart local v0    # "this":Ljavafx/scene/Node$StyleableProperties$13;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 8678
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$StyleableProperties$13;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node$StyleableProperties$13;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/Node$StyleableProperties$13;
    return-object v0
.end method
