.class final Landroid/app/SystemServiceRegistry$47;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/net/EthernetManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/net/EthernetManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 524
    const-string/jumbo v2, "ethernet"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 525
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IEthernetManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IEthernetManager;

    move-result-object v1

    .line 526
    .local v1, "service":Landroid/net/IEthernetManager;
    new-instance v2, Landroid/net/EthernetManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/net/EthernetManager;-><init>(Landroid/content/Context;Landroid/net/IEthernetManager;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 523
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$47;->createService(Landroid/app/ContextImpl;)Landroid/net/EthernetManager;

    move-result-object v0

    return-object v0
.end method
